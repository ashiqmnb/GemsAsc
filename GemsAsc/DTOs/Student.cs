using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.DTOs
{
    public class Student
    {
        public Guid UserID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string AddNo { get; set; }
        public string RegisterNo { get; set; }
        public string Course { get; set; }
        public string Department { get; set; }
        public string ImageUrl { get; set; }
        public bool IsBlocked { get; set; }
    }
}