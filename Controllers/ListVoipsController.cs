using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Testes.Models;

namespace Testes.Controllers
{
    public class ListVoipsController : Controller
    {
        private ContextText db = new ContextText();

        // GET: ListVoips
        public ActionResult Index()
        {
            return View(db.ListVoip.ToList());
        }

        // GET: ListVoips/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ListVoip listVoip = db.ListVoip.Find(id);
            if (listVoip == null)
            {
                return HttpNotFound();
            }
            return View(listVoip);
        }

        // GET: ListVoips/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ListVoips/Create
        // Para se proteger de mais ataques, ative as propriedades específicas a que você quer se conectar. Para 
        // obter mais detalhes, consulte https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Ramal,Empresa,Funcionario,Senha,Ip,Status")] ListVoip listVoip)
        {
            if (ModelState.IsValid)
            {
                db.ListVoip.Add(listVoip);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(listVoip);
        }

        // GET: ListVoips/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ListVoip listVoip = db.ListVoip.Find(id);
            if (listVoip == null)
            {
                return HttpNotFound();
            }
            return View(listVoip);
        }

        // POST: ListVoips/Edit/5
        // Para se proteger de mais ataques, ative as propriedades específicas a que você quer se conectar. Para 
        // obter mais detalhes, consulte https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Ramal,Empresa,Funcionario,Senha,Ip,Status")] ListVoip listVoip)
        {
            if (ModelState.IsValid)
            {
                db.Entry(listVoip).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(listVoip);
        }

        // GET: ListVoips/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ListVoip listVoip = db.ListVoip.Find(id);
            if (listVoip == null)
            {
                return HttpNotFound();
            }
            return View(listVoip);
        }

        // POST: ListVoips/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ListVoip listVoip = db.ListVoip.Find(id);
            db.ListVoip.Remove(listVoip);
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
