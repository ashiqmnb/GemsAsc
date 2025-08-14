using GemsAsc.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class FacultyRepo
    {
        List<FacultyDTO> FacultyList = new List<FacultyDTO>
        {
            new FacultyDTO{ Name = "Dr. SANDHYA BALAKRISHNAN P.K", Designation = "HOD, ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/snadhya.jpg"},
            new FacultyDTO{ Name = "MOHAMMED ASGAR ALI C", Designation = "ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/asgar.png"},
            new FacultyDTO{ Name = "RANEESHA K.K", Designation = "ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/raneesha.jpg"},
            new FacultyDTO{ Name = "ASNA K S", Designation = "ASSISTANT PROFESSOR", ImageUrl = "~/Assets/Images/Faculties/asna.jpeg"}
        };


        public List<FacultyDTO> GetFaculties()
        {
            return FacultyList;
        }
    }
}