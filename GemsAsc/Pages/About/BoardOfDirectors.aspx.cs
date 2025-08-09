using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages
{
    public partial class BoardOfDirectors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var directorRepo = new DirectorsRepo();
                var directors = directorRepo.GetAllDirectors();

                rptDirectors.DataSource = directors;
                rptDirectors.DataBind();
            }
        }
    }
}