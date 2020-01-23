using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Testes.Models;

namespace Testes.Controllers
{
    public class TestesHTMLController : Controller
    {
        // GET: TestesHTML
        private ContextText db = new ContextText();
        public ActionResult Index()

        {
            return View();
        }
     
        public ActionResult ServicoWindows()
        {
          

            return View();
        }

        public ActionResult ModalTeste()
        {
            return View();
        }

        public ActionResult DropDownAjax()
        {
            // criando um dropdown sem auxlio de um banco de dados 
            List<Generic> Lista = new List<Generic>
            {
                new Generic { id=1 ,  desc = "Fulano"},
                new Generic { id=3 ,  desc = "Beltrano"},
                new Generic { id=4 ,  desc = "Jurema"},
                new Generic { id=5 ,  desc = "Juraci"},
                new Generic { id=6 ,  desc = "Claudio"},
            };
            // passando para view bag apresentar na view
            ViewBag.emp = new SelectList(Lista, "id", "desc");
            return View();
        }

           // metodo para requisação ajax na view 
        public JsonResult getDepartment(int p)
        {
            List<Generic> ListaDepartamento = new List<Generic>
            {
                new Generic { id=1 ,  desc = "Ti"},
                new Generic { id=3 ,  desc = "Contas a pagar"},
                new Generic { id=4 ,  desc = "Comercial"},
                new Generic { id=5 ,  desc = "Gerencia"},
                new Generic { id=6 ,  desc = "Importaçao"},
            };

                      // PESQUISA EM LISTA APENAS PARA FACILITAR CASO O BANCO NAO ESTEJA CONFIGURADO
            return Json(ListaDepartamento.Where(x => x.id == p).Select(x => new
            {
                DepartmentID = x.id,
                DepartmentName = x.desc
            }).ToList(), JsonRequestBehavior.AllowGet);

                          // PESQUISA FEIA NO BANCO DE DADOS 

            //return Json(db.ListVoip.Where(x => x.id == p).Select(x => new
            //{
            //    DepartmentID = x.id,
            //    DepartmentName = x.Funcionario
            //}).ToList(), JsonRequestBehavior.AllowGet);
        }




                  // classe genericapara facilitar consultas 
        private class Generic
        {
            public int id { get; set; }
            public string desc { get; set; }
        }
    }
}