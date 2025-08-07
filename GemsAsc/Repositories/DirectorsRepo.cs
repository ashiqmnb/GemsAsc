using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class Director
    {
        public string Name { get; set; }
        public string Designation { get; set; }
        public string ImageUrl { get; set; }
    }
    public class DirectorsRepo
    {
        List<Director> Directors = new List<Director>
        {
            new Director { Name = "Mr. E.C. Kunhahammed", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/kunmuhammeddirector.png" },
            new Director { Name = "Mr. P.T. Hamsa", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/pthamsadirector.png" },
            new Director { Name = "Mr. P. Kamal Ahammed", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/kamalahammed.png" },
            new Director { Name = "Mr. Mohammed Ali Kalakkal", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/mohammedali.png" },
            new Director { Name = "Mr. Adv. Kunhali T", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/advkunhali.png" },
            new Director { Name = "Mr. Abdulla Master M", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/abdullamaster.jpeg" },
            new Director { Name = "Dr. Mohammed Kutty P", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/mohdkutty.jpg" },
            new Director { Name = "Ms. Laila V.N", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/laila.png" },
            new Director { Name = "Ms. Shameena V P", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/shameema.jpeg" },
            new Director { Name = "Mr. Raveendran", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/raveendran.png" },
            new Director { Name = "Ms. Sinija Haris P", Designation = "Director", ImageUrl = "~/Assets/Images/Directors/sinijahaaris.jpg" }
        };


        public List<Director> GetAllDirectors()
        {
            return Directors;
        }
    }
}