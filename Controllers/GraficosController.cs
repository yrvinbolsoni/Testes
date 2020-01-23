using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Testes.Models;


namespace Testes.Controllers
{
    public class GraficosController : Controller
    {
        // essa controle terar uma serie de graficos do google ! 

        public ActionResult Index(){

            return View();

        }

        public ActionResult BarChart()
        {
            return View();
        }

        public ActionResult BarJsonChart()
        {
            return View();
        }

        

        public ActionResult Pizza()
        {
            return View();
        }

        public ActionResult ColunaClicavel()
        {
            return View();
        }
        public ActionResult LineChart()
        {
            return View();
        }

        public JsonResult getDepartment()
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
            return Json(ListaDepartamento.ToList().Select(x => new
            {
                DepartmentID = x.id,
                DepartmentName = x.desc
            }).ToList(), JsonRequestBehavior.AllowGet);
        }


            public ActionResult ColunaComparativa()
        {
            return View();
        }

        public ActionResult ColunaChart()
        {
            return View();
        }

        // essa função mostra como mostrar mais de um Grafico na mesma pagina usando o mesmo metodo de load deixando o precesso de carregamento mais rapido 
        public ActionResult GraficosGeneralizado()
        {
            return View();
        }

        private class Generic
        {
            public int id { get; set; }
            public string desc { get; set; }
        }
    }
}