using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Components.IQAC
{
    public partial class Composition : System.Web.UI.UserControl
    {
        public class TeacherMember
        {
            public string Name { get; set; }
            public string Position { get; set; }
            public string ImageUrl { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{

            //    List<TeacherMember> members = new List<TeacherMember>
            //    {
            //        new TeacherMember { Name = "Abdul Rahman", Position = "Assistant Professor , HOD(Geology)",ImageUrl = "~/Assets/Images/IQAC/vicechairman.jpg" },
            //        new TeacherMember { Name = "Sandeepan KM", Position = "Assistant Professor , HOD(Management Studies)", ImageUrl = "~/Assets/Images/IQAC/sandeepan.png" },
            //        new TeacherMember { Name = "Resna NK", Position = "Assistant Professor , HOD(Microbiology)", ImageUrl = "~/Assets/Images/IQAC/resna.png" },
            //        new TeacherMember { Name = "Sivakumar K", Position = "Assistant Professor , HOD(Microbiology)", ImageUrl = "~/Assets/Images/IQAC/sivakumar.jpg" },
            //        new TeacherMember { Name = "Dr. Sandhya Balakrishnan PK", Position = "Assistant Professor , HOD(Computer Applications)", ImageUrl = "~/Assets/Images/Faculties/snadhya.jpg" },
            //        new TeacherMember { Name = "Arathi P Rajan", Position = "Assistant Professor , HOD(Travel & Tourism)", ImageUrl = "~/Assets/Images/IQAC/arathy.jpg" },
            //        new TeacherMember { Name = "Ranjusha", Position = "Assistant Professor , HOD(Biotechnology)", ImageUrl = "~/Assets/Images/IQAC/ranjusha.jpg" },
            //        new TeacherMember { Name = "Anoos Babu", Position = "Assistant Professor , HOD(Computer Science)", ImageUrl = "~/Assets/Images/IQAC/anoos.png" },
            //        new TeacherMember { Name = "Sulthana Afroza PP", Position = "Assistant Professor , HOD(English)", ImageUrl = "~/Assets/Images/IQAC/vicechairman.jpg" },
            //        new TeacherMember { Name = "Seethal P", Position = "Assistant Professor , HOD(Languages)", ImageUrl = "~/Assets/Images/IQAC/seethal.jpeg" },
            //        new TeacherMember { Name = "Jayashree", Position = "Assistant Professor , HOD(Mathematics)", ImageUrl = "~/Assets/Images/IQAC/jayashree.png" },
            //        new TeacherMember { Name = "Muhammed Binshad", Position = "Assistant Professor , HOD(Multimedia)", ImageUrl = "~/Assets/Images/IQAC/binshad.jpeg" },
            //        new TeacherMember { Name = "Anitha Parveen", Position = "Assistant Professor , HOD(Social Work)", ImageUrl = "~/Assets/Images/IQAC/anitha.jpeg" },
            //    };

            //    rptTeachers.DataSource = members;
            //    rptTeachers.DataBind();
            //}
        }
    }
}