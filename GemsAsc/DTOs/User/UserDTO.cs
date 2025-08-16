using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.DTOs.User
{
    public class UserDTO
    {
        public string UserID { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Role { get; set; }
        public bool IsBlocked { get; set; }
    }
}