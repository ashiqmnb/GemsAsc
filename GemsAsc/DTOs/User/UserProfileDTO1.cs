using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.DTOs.User
{
    public class UserProfileDTO1
    {
        public string UserID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int AddNo { get; set; }
        public string RegisterNo { get; set; }
        public string Course { get; set; }
        public string Department { get; set; }
        public string ImageUrl { get; set; }
    }
}