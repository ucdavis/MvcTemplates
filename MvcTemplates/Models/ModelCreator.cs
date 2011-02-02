using System;

namespace MvcTemplates.Models
{
    public static class ModelCreator
    {
        public static Customer GetCustomer()
        {
            var customer = new Customer("Company") {ContactName = "Contact", Country = "USA", Fax = "555-555-5555", Id = 1};

            return customer;
        }

        public static Order GetOrder()
        {
            var order = new Order(orderedBy: GetCustomer())
                            {
                                Id = 1,
                                OrderDate = DateTime.Now.AddDays(-50),
                                ShipAddress = "Shields Ave"
                            };

            return order;
        }
    }
}