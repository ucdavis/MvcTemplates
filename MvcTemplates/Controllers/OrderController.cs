using System.Web.Mvc;
using MvcTemplates.Models;

namespace MvcTemplates.Controllers
{
    public class OrderController : Controller
    {
        public ActionResult Show()
        {
            var order = ModelCreator.GetOrder();

            return View(order);
        }

        public ActionResult Edit()
        {
            var order = new Order(null);
            
            return View(order);
        }

    }
}
