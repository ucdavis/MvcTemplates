using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MvcTemplates.Models
{
    public class Customer : ObjectBase
    {
        /// <summary>
        /// Creates valid domain object
        /// </summary>
        public Customer(string companyName)
        {
            CompanyName = companyName;
        }

        /// <summary>
        /// Since we want to leverage automatic properties, init appropriate members here.
        /// </summary>
        [Required]
        public virtual string CompanyName { get; set; }
        [Required]
        public virtual string ContactName { get; set; }
        [Required]
        public virtual string Country { get; set; }
        public virtual string Fax { get; set; }

        //public virtual IList<Order> Orders { get; protected set; }
    }
}