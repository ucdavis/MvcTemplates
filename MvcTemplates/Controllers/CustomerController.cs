using System.Web.Mvc;
using MvcTemplates.Models;

namespace MvcTemplates.Controllers
{
    public class CustomerController : Controller
    {
        public ActionResult Show()
        {
            var customer = ModelCreator.GetCustomer();

            return View(customer);
        }

        public ActionResult Edit()
        {
            var customer = new Customer(string.Empty);

            return View(customer);
        }
    }
}
