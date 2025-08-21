using GemsAsc.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Faculty
{
    public partial class FacultyStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStudents();
            }
        }

        private void BindStudents()
        {
            WcfUserService.Service1Client wcfUserService = new WcfUserService.Service1Client();
            var studByDept = wcfUserService.GetStudentsByDept(Session["Department"].ToString());
            rptStudents.DataSource = studByDept;
            rptStudents.DataBind();
        }

        protected void btnBlockUnblock_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string addNo = btn.CommandArgument;

            //UserService userService = new UserService();
            WcfUserService.Service1Client wcfUserService = new WcfUserService.Service1Client();

            //userService.ToggleBlock(addNo.ToString());
            wcfUserService.ToggleBlock(addNo.ToString());

            BindStudents();
        }

    }
}