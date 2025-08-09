using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.Models
{
    public class Event
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime Date { get; set; }
        public List<string> Images { get; set; }
    }
}