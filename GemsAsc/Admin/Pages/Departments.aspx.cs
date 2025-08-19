using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin.Pages
{
    public partial class Departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //UserService userService = new UserService();
            WcfUserService.Service1Client wcfUserService = new WcfUserService.Service1Client();

            //var depts = userService.GetDepartments();
            var depts = wcfUserService.GetDepartments();

            rptDepartments.DataSource = depts;
            rptDepartments.DataBind();
        }
    }
}


