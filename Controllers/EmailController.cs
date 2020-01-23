using OpenPop.Mime;
using OpenPop.Pop3;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;

namespace Testes.Controllers
{
    public class EmailController : Controller
    {
        // GET: Email
        public List<Email> emails = new List<Email>();
        public List<Anexo> anexos = new List<Anexo>();

        // dados para conexão 
        private string hostname = "mail.grieg.com.br";
        private int port = 110;
        private bool useSsl = false;
        private string username = "helpdesk";
        private string password = "stmw8814";

        private Timer _timer;

        public ActionResult Index()
        {
            // pegando lista de emails no servidor
            // List<Email> PegarMensagens = GetMensagens();


            // abre chamado 
            //  AbreChamado(PegarMensagens);

            ViewBag.Email = emails;

            //Anexo anex =   emails.Where(x => x.Assunto == "teste 8").First().Anexos.Where(x => x.FileName.Equals("NotaSSD.pdf")).FirstOrDefault();
            ViewBag.anexo = null;

            // MostarArquivo(anex);


            //dados  do xml 
            //ViewBag.dadosXml = GetDadosXML();

            return View();
        }



        public List<Email> GetMensagens()
        {
            // The client disconnects from the server when being disposed
            using (Pop3Client client = new Pop3Client())
            {
                // Connect to the server
                client.Connect(hostname, port, useSsl);

                // Authenticate ourselves towards the server
                client.Authenticate(username, password);

                // Get the number of messages in the inbox
                int messageCount = client.GetMessageCount();

                // We want to download all messages
                List<Message> allMessages = new List<Message>(messageCount);
                List<Email> ListEmails = new List<Email>();


                // Messages are numbered in the interval: [1, messageCount]
                // Ergo: message numbers are 1-based.
                // Most servers give the latest message the highest number



                // adicionando mensagens na classe allMessages
                for (int i = messageCount; i > 0; i--)
                {
                    allMessages.Add(client.GetMessage(i));
                }
                // Numero da mensagem server para identificar a mensagem que sera apagada.

                // verificando se tem emails 
                foreach (var message in allMessages)
                {
                    List<Anexo> anexos = new List<Anexo>();
                    var popText = message.FindFirstPlainTextVersion();
                    var popHtml = message.FindFirstHtmlVersion();

                    string mailText = string.Empty;
                    string mailHtml = string.Empty;


                    if (popText != null)
                        mailText = popText.GetBodyAsText();
                    if (popHtml != null)
                        mailHtml = popHtml.GetBodyAsText();

                    // verificando se possue anexos e adicionando na classe ANEXO
                    if (message.MessagePart.MessageParts[1].IsAttachment == true)
                    {
                        foreach (MessagePart attachment in message.FindAllAttachments())
                        {
                            anexos.Add(new Anexo
                            {
                                FileByte = attachment.Body,
                                FileName = attachment.FileName,
                                FileType = attachment.ContentType.MediaType
                            });
                        }
                    }

                    //adicionando os emails na classe desiginada
                    ListEmails.Add(new Email()
                    {
                        Id = message.Headers.MessageId,
                        Assunto = message.Headers.Subject,
                        De = message.Headers.From.Address,
                        Para = string.Join("; ", message.Headers.To.Select(to => to.Address)),
                        Data = message.Headers.DateSent,
                        ConteudoTexto = mailText,
                        ConteudoHtml = !string.IsNullOrWhiteSpace(mailHtml) ? mailHtml : mailText,
                        Anexos = anexos

                    });

                    //apagar mensagens por id 
                    //if (message.Headers.Subject == "teste 6")
                    //{
                    //    var teste = DeleteMessageByMessageId(message.Headers.MessageId);
                    //}

                }
                return ListEmails;
            }
        }

        public void AbreChamado(List<Email> Emails)
        {
            int Passou = 0;
            string quem = "";

            foreach (var email in Emails)
            {
                try
                {
                    if (email.Assunto.ToUpper().Contains("CHAMADO"))
                    {
                        Passou += 1;
                        quem += email.Assunto;
                        // GRAVAR NO BANDO DE DADOS  await
                        DeleteMessageByMessageId(email.Id);
                    }
                }
                catch (Exception ex)
                {
                     //adiciona no xml
                     addLog("System", "Droyrvinbpdown", "", ex.ToString(), Server.MapPath("~/LOG.xml"));
                }

            }
        }

        // -----------------------------------------------------------   xml ------------------------------------------------



        // Se colocar na pasta de models .. 
        public class ErroXml
        {
            public string User { get; set; }
            public string NomeProcesso { get; set; }
            public string data { get; set; }
            public string hora { get; set; }
            public string ip { get; set; }
            public string erro { get; set; }
        }
         
        // pega os dados do xml e passa para a classe ErroXml
        public List<ErroXml> GetDadosXML()
        {
            XDocument xmlDoc = XDocument.Load(Server.MapPath("~/LOG.xml"));
            var Dados = from dadosXml in xmlDoc.Descendants("log")
                           select new ErroXml
                           {
                               User = dadosXml.Element("Usuario").Value,
                               NomeProcesso = dadosXml.Element("NomeRelatorio").Value,
                               data = dadosXml.Element("Data").Value,
                               hora = dadosXml.Element("Hora").Value,
                               ip = dadosXml.Element("IP").Value,
                               erro = dadosXml.Element("Erro").Value
                           };

            return Dados.ToList();
        }

        // adiciona no xml 
        public void addLog(string nomeUser, string NomeRelatorio, string sql, string error, string sXMLFile)
        {
            string data = DateTime.Now.ToShortDateString();
            string Hora = DateTime.Now.ToShortTimeString();
           // string ip = GetIPAddress();

            DataSet ds = new DataSet();
            ds.ReadXml(sXMLFile);
            if (ds.Tables.Count == 0)
            {
                DataTable dt = new DataTable("log");
                dt.Columns.Add("Usuario");
                dt.Columns.Add("NomeRelatorio");
                dt.Columns.Add("Data");
                dt.Columns.Add("Hora");
                dt.Columns.Add("Ip");
                dt.Columns.Add("Erro");
                ds.Tables.Add(dt);
            }
            DataRow dRow = ds.Tables[0].NewRow();
            dRow["Usuario"] = nomeUser;
            dRow["NomeRelatorio"] = NomeRelatorio;
            dRow["Data"] = data;
            dRow["Hora"] = Hora;
            dRow["IP"] = "1231.321.321.32.1 ";
            dRow["Erro"] = error;
            ds.Tables["log"].Rows.Add(dRow);
            ds.WriteXml(sXMLFile);
        }

        // -----------------------------------------------------------   / fim xml   ------------------------------------------------

        // deletar por id
        public bool DeleteMessageByMessageId(string messageId)
        {
            using (Pop3Client client = new Pop3Client())
            {
                // Connect to the server
                client.Connect(hostname, port, useSsl);

                // Authenticate ourselves towards the server
                client.Authenticate(username, password);

                // Get the number of messages on the POP3 server
                int messageCount = client.GetMessageCount();

                // Run trough each of these messages and download the headers
                for (int messageItem = messageCount; messageItem > 0; messageItem--)
                {
                    // If the Message ID of the current message is the same as the parameter given, delete that message
                    if (client.GetMessageHeaders(messageItem).MessageId == messageId)
                    {
                        // Delete
                        client.DeleteMessage(messageItem);
                        return true;
                    }
                }
            }
            // We did not find any message with the given messageId, report this back
            return false;
        }
 


        public void MostarArquivo(Anexo anexo)
        {

            Response.Clear();  // limpar reponses anteriores 
            Response.ContentType = anexo.FileType; // extenção do arquivo 
            Response.AppendHeader("Content-Disposition", "inline; filename =" + anexo.FileName+ "");  // nome que vai aparecer para donwload
            Response.BufferOutput = true;
            Response.AddHeader("Content-Length",  anexo.FileByte.Length.ToString());
            Response.BinaryWrite(anexo.FileByte); // convertando aquivo
            Response.End();
        }

        public class Email
        {
            public int NumerdoMessagem { get; set; }
            public string Id { get; set; }
            public string Assunto { get; set; }
            public string De { get; set; }
            public string Para { get; set; }
            public DateTime Data { get; set; }
            public string ConteudoTexto { get; set; }
            public string ConteudoHtml { get; set; }
            public virtual List<Anexo> Anexos { get; set; }


        }

        public class Anexo
        {
            public string FileName { get; set; }
            public string FileType { get; set; }
            public byte[]   FileByte { get; set; }
        }
    }
}



//// index 
//Anexo anex = _emails.FirstOrDefault().Anexos.Where(x => x.FileName.Equals("NotaSSD.pdf")).FirstOrDefault();

//public List<Message> GetMensagens(string hostname, int port, bool useSsl, string username, string password)
//{
//    // The client disconnects from the server when being disposed
//    using (Pop3Client client = new Pop3Client())
//    {
//        // Connect to the server
//        client.Connect(hostname, port, useSsl);

//        // Authenticate ourselves towards the server
//        client.Authenticate(username, password);

//        // Get the number of messages in the inbox
//        int messageCount = client.GetMessageCount();

//        // We want to download all messages
//        List<Message> allMessages = new List<Message>(messageCount);
//        List<Anexo> anexos = new List<Anexo>();

//        // Messages are numbered in the interval: [1, messageCount]
//        // Ergo: message numbers are 1-based.
//        // Most servers give the latest message the highest number
//        for (int i = messageCount; i > 0; i--)
//        {
//            allMessages.Add(client.GetMessage(i));


//            if (allMessages.First().MessagePart.MessageParts[1].IsAttachment == true)
//            {
//                foreach (MessagePart attachment in allMessages.First().FindAllAttachments())
//                {

//                    anexos.Add(new Anexo
//                    {
//                        FileByte = attachment.Body,
//                        FileName = attachment.FileName,
//                        FileType = attachment.ContentType.MediaType

//                    });

//                }
//            }


//        }

//        var popText = allMessages.First().FindFirstPlainTextVersion();
//        var popHtml = allMessages.First().FindFirstHtmlVersion();

//        string mailText = string.Empty;
//        string mailHtml = string.Empty;

//        if (popText != null)
//            mailText = popText.GetBodyAsText();
//        if (popHtml != null)
//            mailHtml = popHtml.GetBodyAsText();

//        _emails.Add(new Email()
//        {
//            Id = allMessages.First().Headers.MessageId,
//            Assunto = allMessages.First().Headers.Subject,
//            De = allMessages.First().Headers.From.Address,
//            Para = string.Join("; ", allMessages.First().Headers.To.Select(to => to.Address)),
//            Data = allMessages.First().Headers.DateSent,
//            ConteudoTexto = mailText,
//            ConteudoHtml = !string.IsNullOrWhiteSpace(mailHtml) ? mailHtml : mailText,
//            Anexos = anexos

//        });


//        _anexos = _anexos;

//        // Now return the fetched messages
//        return allMessages;
//    }
//}







    //******************************************************************************************






//public void teste()
//{
//if (messagePart.IsAttachment == true)
//{
//    foreach (MessagePart attachment in message.FindAllAttachments())
//    {
//        if (attachment.FileName.Equals("blabla.pdf"))
//        { // Save the raw bytes to a file File.WriteAllBytes(attachment.FileName, attachment.Body); //overwrites MessagePart.Body with attachment } } }

//        }

//    }
//}

//    using (OpenPop.Pop3.Pop3Client client = new Pop3Client())
//    {
//        client.Connect("in.mail.Your.Mailserver.com", 110, false);
//        client.Authenticate("usernamePop3", "passwordPop3", AuthenticationMethod.UsernameAndPassword);
//        if (client.Connected)
//        {
//            int messageCount = client.GetMessageCount();
//            List allMessages = new List(messageCount);
//            for (int i = messageCount; i > 0; i--) { allMessages.Add(client.GetMessage(i)); }
//            foreach (Message msg in allMessages)
//            {
//                var att = msg.FindAllAttachments();
//                foreach (var ado in att)
//                { ado.Save(new System.IO.FileInfo(System.IO.Path.Combine("c:\\xlsx", ado.FileName))); }
//            }
//        }
//    }
//}
//public void testea()
//{
//    try
//    {
//        client.Connect(“SMTP”, 110, false); //UseSSL true or false
//        client.Authenticate(“USUARIO”, “SENHA”);

//        var messageCount = client.GetMessageCount();
//        var Messages = new List(messageCount);
//        var contdel = messageCount;
//        progressBar1.Maximum = messageCount + 1;
//        //MessageBox.Show(“Existem ” + contdel.ToString() + “para receber!”);
//        for (int i = 0; i < messageCount; i++)
//        {

//            OpenPop.Mime.Message getMessage = client.GetMessage(i + 1);
//            Messages.Add(getMessage);
//            progressBar1.Value = i + 1;
//            label1.Text = ("Recebendo" + i.ToString() + "Mensagens");

//        }

//        foreach (OpenPop.Mime.Message msg in Messages)
//        {
//            foreach (var attachment in msg.FindAllAttachments())
//            {
//                string filePath = Path.Combine("c:\\anexo\\", attachment.FileName);

//                if (attachment.FileName.Contains("xml"))
//                {
//                    FileStream Stream = new FileStream(filePath, FileMode.Create);
//                    BinaryWriter BinaryStream = new BinaryWriter(Stream);
//                    BinaryStream.Write(attachment.Body);
//                    BinaryStream.Close();
//                }
//            }
//        }

//        return;
//    }