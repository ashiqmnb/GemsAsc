using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.DTOs
{
    public class DepartmentDTO
    {
        public Guid UserID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Students { get; set; }
    }
}