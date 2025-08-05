using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class Gallary
    {
        public string Title { get; set; }
        public string ImageUrl { get; set; }
    }
    public class GallaryRepo
    {
        List<Gallary> GallaryList = new List<Gallary>
        {
            new Gallary { Title = "Interzone Performance", ImageUrl = "~/Assets/Images/Gallary/galary1.png"},
            new Gallary { Title = "Interzone Performance", ImageUrl = "~/Assets/Images/Gallary/galary2.png"},
            new Gallary { Title = "Arts fest off stage", ImageUrl = "~/Assets/Images/Gallary/galary3.png"},
            new Gallary { Title = "Arts fest off stage", ImageUrl = "~/Assets/Images/Gallary/galary5.png"},
            new Gallary { Title = "Christmas celebration", ImageUrl = "~/Assets/Images/Gallary/galary6.png"},
            new Gallary { Title = "Christmas celebration with non teachin staffs", ImageUrl = "~/Assets/Images/Gallary/galary7.png"},
            new Gallary { Title = "Union inauguration 2023-24", ImageUrl = "~/Assets/Images/Gallary/galary8.png"},
            new Gallary { Title = "Student protest against road accident", ImageUrl = "~/Assets/Images/Gallary/galary9.png"},
            new Gallary { Title = "Mehfil victory day celebration", ImageUrl = "~/Assets/Images/Gallary/galary10.png"},
            new Gallary { Title = "Collage union magzine release 2023-34", ImageUrl = "~/Assets/Images/Gallary/galary11.png"},
            new Gallary { Title = "Teachers day celebration", ImageUrl = "~/Assets/Images/Gallary/galary12.png"},
            new Gallary { Title = "Food fest 2024", ImageUrl = "~/Assets/Images/Gallary/galary13.png"},
            new Gallary { Title = "Library and research centre", ImageUrl = "~/Assets/Images/Gallary/galary14.jpg"},
            new Gallary { Title = "Freedom Wall Inauguration", ImageUrl = "~/Assets/Images/Gallary/galary15.jpeg"},
            new Gallary { Title = "GEMS Theature", ImageUrl = "~/Assets/Images/Gallary/galary16.jpeg"},
            new Gallary { Title = "Library and research centre inauguration", ImageUrl = "~/Assets/Images/Gallary/galary17.jpeg"},
            new Gallary { Title = "Alumni meet 2022", ImageUrl = "~/Assets/Images/Gallary/galary18.jpeg"},
            new Gallary { Title = "FIESTA 2022", ImageUrl = "~/Assets/Images/Gallary/galary19.jpeg"},
            new Gallary { Title = "Independence day celebration", ImageUrl = "~/Assets/Images/Gallary/galary20.jpeg"},
        };


        public List<Gallary> GetAllGalaryItems()
        {
            return GallaryList;
        }

        public List<Gallary> GetItemsForHome()
        {
            return GallaryList.Take(10).ToList();
        }
    }
}