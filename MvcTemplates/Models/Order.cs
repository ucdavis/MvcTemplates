using System;

namespace MvcTemplates.Models
{
    public class Order : ObjectBase
    {
        public Order(Customer orderedBy)
        {
            OrderedBy = orderedBy;
        }

        public virtual DateTime OrderDate { get; set; }

        public virtual string ShipAddress { get; set; }

        public virtual Customer OrderedBy { get; set; }

        public override string ToString()
        {
            return string.Format("Shipping to {0} on {1:d}", ShipAddress, OrderDate);
        }
    }
}