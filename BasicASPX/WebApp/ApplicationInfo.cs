using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp
{
    public class ApplicationInfo
    {
        private string _StreetAddress2;

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string StreetAddress1 { get; set; }
        public string StreetAddress2
        {
            get
            {
                return _StreetAddress2;
            }
            set
            {
                _StreetAddress2 = string.IsNullOrEmpty(value) ? null : value;
            }
        }
        public string City { get; set; }
        public string Province { get; set; }
        public string PostalCode { get; set; }
        public string Email{ get; set; }
        public ApplicationInfo(string firstname, string lastname, string street1,string street2,string city, string province, string pc, string email)
        {
            FirstName = firstname;
            LastName = lastname;
            StreetAddress1 = street1;
            StreetAddress2 = street2;
            City = city;
            PostalCode = pc;
            Email = email;
        }
        public ApplicationInfo()
        {

        }
    }
}