using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Components
{
    public partial class Programmes : System.Web.UI.UserControl
    {
        public class Programme
        {
            public string Name { get; set; }
            public string Type { get; set; }
            public string ImageUrl { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var programmes = new List<Programme>
                {
                    new Programme { Name = "B.Sc. Biotechnology", Type = "UG", ImageUrl = "~/Assets/Images/Programes/biotech.jpg" },
                    new Programme { Name = "B.Sc. Geology", Type = "UG", ImageUrl = "~/Assets/Images/Programes/mscgeology.jpg" },
                    new Programme { Name = "BA Sociology", Type = "UG", ImageUrl = "~/Assets/Images/Programes/socio.jpg" },
                    new Programme { Name = "BA English Language & Literture", Type = "UG", ImageUrl = "~/Assets/Images/Programes/baenglish.jpg" },
                    new Programme { Name = "B.Sc. Computer Science", Type = "UG", ImageUrl = "~/Assets/Images/Programes/cs.jpg"},
                    new Programme { Name = "BCA", Type = "UG", ImageUrl = "~/Assets/Images/Programes/bca.jpg"},
                    new Programme { Name = "B.Sc. Microbiology", Type = "UG", ImageUrl = "~/Assets/Images/Programes/bscmicro.jpg" },
                    new Programme { Name = "BBA", Type = "UG", ImageUrl = "~/Assets/Images/Programes/bba.jpg" },
                    new Programme { Name = "B.Com Computer Applications", Type = "UG", ImageUrl ="~/Assets/Images/Programes/bcomca.jpg"},
                    new Programme { Name = "B.Com Finance", Type = "UG", ImageUrl = "~/Assets/Images/Programes/bcomfinance.jpg"},
                    new Programme { Name = "B.Com Co-Operation", Type = "UG", ImageUrl = "~/Assets/Images/Programes/bcomcop.jpg" },
                    new Programme { Name = "B.Com Banking & Insurance", Type = "UG", ImageUrl = "~/Assets/Images/Programes/maths.jpg" },
                    new Programme { Name = "BTTM", Type = "UG", ImageUrl = "~/Assets/Images/Programes/bttm.jpg"},
                    new Programme { Name = "BA Multimedia", Type = "UG", ImageUrl = "~/Assets/Images/Programes/bamultimedia.jpg" },
                    new Programme { Name = "M.Com Finance", Type = "PG", ImageUrl = "~/Assets/Images/Programes/mcom.jpg" },
                    new Programme { Name = "MA English Language & Literture", Type = "PG", ImageUrl = "~/Assets/Images/Programes/maenglish.jpg" },
                    new Programme { Name = "M.Sc. General Biotechnology", Type = "PG", ImageUrl = "~/Assets/Images/Programes/mscbiotech.jpg" },
                    new Programme { Name = "M.Sc. Microbiology", Type = "PG", ImageUrl = "~/Assets/Images/Programes/mscmicro.jpg" },
                    new Programme { Name = "M.Sc. Applied Geology", Type = "PG", ImageUrl = "~/Assets/Images/Programes/mscgeology.jpg" },
                    new Programme { Name = "MSW", Type = "PG", ImageUrl = "~/Assets/Images/Programes/msw.jpg" }
                };

                rptProgrammes.DataSource = programmes;
                rptProgrammes.DataBind();
            }
        }
    }
}