using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Testes.Models;

namespace Testes.Controllers
{
    public class ArquivoController : Controller
    {

        // quando tiver um tempo fazer upload em diretorio 
        public ActionResult teste(HttpPostedFileBase file)
        {

            if (file.ContentLength > 0)
            {
                string fileName = Path.GetFileName(file.FileName );
                string fileExtencion = Path.GetExtension(fileName);
                var path = Path.Combine(Server.MapPath("~/App_Data/uploads"), fileName);
                file.SaveAs(path);
            }

            return RedirectToAction("Create");
        }

        private ContextText db = new ContextText();

        // GET: Arquivo
        public ActionResult Index()
        {
            return View(db.D.ToList());
        }

        public ActionResult MostarImgNaview(int? id) // mostra imgaem diretamente na view
        {
            // mostra imagem no navegador 
            var dados = db.D.Where(x => x.Id == id).FirstOrDefault();

            ViewBag.Base64String = "data:" + dados.fileExtension + ";base64," + Convert.ToBase64String(dados.data, 0, dados.data.Length); // passando ima atravez da viewbag
            return View();
        }

        public void MostarArquivoDobanco(int id) // mostra no navegador 
        {
            var dados = db.D.Where(x => x.Id == id).FirstOrDefault(); // pesquisa valor binario 

            Response.Clear();  // limpar reponses anteriores 
            Response.ContentType = dados.fileExtension; // extenção do arquivo 
            Response.AppendHeader("Content-Disposition", "inline; filename ="+dados.fileName+"" );  // nome que vai aparecer para donwload
            Response.BufferOutput = true;
            Response.AddHeader("Content-Length", dados.data.Length.ToString());
            Response.BinaryWrite(dados.data); // convertando aquivo
            Response.End();
        }

        public void DonwloadArquivoDobanco(int id ) // dowload de qualquer arquivo 
        {

            var dados = db.D.Where(x => x.Id == id).FirstOrDefault(); // pesquisa valor binario 

            Response.Clear();  // limpar reponses anteriores 
            Response.ContentType = dados.fileExtension; // extenção do arquivo 
            Response.AppendHeader("Content-Disposition", "attachment; filename =" + dados.fileName + "");  // nome que vai aparecer para donwload
            Response.BufferOutput = true;
            Response.AddHeader("Content-Length", dados.data.Length.ToString());
            Response.BinaryWrite(dados.data); // convertando aquivo
            Response.End();
        }

        private byte[] ConvertFileToByte(string sPath)
        {

            byte[] data = null;
            FileInfo finfo = new FileInfo(sPath);
            long numbytes = finfo.Length;
            FileStream Fstream = new FileStream(sPath, FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(Fstream);
            data = br.ReadBytes((int)numbytes);
            return data;
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(HttpPostedFileBase postedFile, [Bind(Include = "Id,data,fileName,fileExtension")] D d)
        {

            string NameFile =  postedFile.FileName;
            string contextType = postedFile.ContentType;

            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


            D dados = new D();
            dados.fileName = NameFile;
            dados.fileExtension = contextType;
            dados.Id = d.Id;
            dados.data = bytes;

            db.D.Add(dados);
            db.SaveChanges();

            if (ModelState.IsValid)
            {
                db.D.Add(d);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(d);
        }

        // GET: Arquivo/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var dados = db.D.Where(x => x.Id == id).FirstOrDefault();

            ///////// mostrar pdf no navegaodr 
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "inline; filename = data.pdf");
            Response.BufferOutput = true;
            Response.AddHeader("Content-Length", dados.data.Length.ToString());
            Response.BinaryWrite(dados.data);
            Response.End();

            return View(dados);
        }

        // GET: Arquivo/Create
        public ActionResult Create()
        {
            return View();
        }

        // GET: Arquivo/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            D d = db.D.Find(id);
            if (d == null)
            {
                return HttpNotFound();
            }
            return View(d);
        }

        // POST: Arquivo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            D d = db.D.Find(id);
            db.D.Remove(d);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
