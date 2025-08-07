using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class Faculty
    {
        public string Name { get; set; }
        public string Designation { get; set; }
        public string ImageUrl { get; set; }
    }
    public class FacultyRepo
    {
        List<Faculty> FacultyList = new List<Faculty>
        {
            new Faculty{ Name = "Dr. SANDHYA BALAKRISHNAN P.K", Designation = "HOD, ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/snadhya.jpg"},
            new Faculty{ Name = "MOHAMMED ASGAR ALI C", Designation = "ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/asgar.png"},
            new Faculty{ Name = "RANEESHA K.K", Designation = "ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/raneesha.jpg"},
            new Faculty{ Name = "ASNA K S", Designation = "ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/asna.jpeg"}
        };


        public List<Faculty> GetFaculties()
        {
            return FacultyList;
        }
    }
}