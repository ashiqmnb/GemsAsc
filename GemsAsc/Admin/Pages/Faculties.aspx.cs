using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin.Pages
{
    public partial class Faculties : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDepartments();
                BindFaculties();
            }
        }

        private void BindDepartments()
        {
            ddlDepartment.Items.Clear();
            ddlDepartment.Items.Add(new ListItem("All", "All"));
            ddlDepartment.Items.Add(new ListItem("Computer Science"));
            ddlDepartment.Items.Add(new ListItem("Computer Applications"));
            ddlDepartment.Items.Add(new ListItem("Biotechnology"));
            ddlDepartment.Items.Add(new ListItem("Microbiology"));
            ddlDepartment.Items.Add(new ListItem("Geology"));
            ddlDepartment.Items.Add(new ListItem("Management Studies"));
            ddlDepartment.Items.Add(new ListItem("Commerce"));
            ddlDepartment.Items.Add(new ListItem("English"));
            ddlDepartment.Items.Add(new ListItem("Sociology"));
            ddlDepartment.Items.Add(new ListItem("Social Work"));
            ddlDepartment.Items.Add(new ListItem("MultiMedia"));
            ddlDepartment.Items.Add(new ListItem("Travel and Tourism"));
            ddlDepartment.Items.Add(new ListItem("Languages"));
            ddlDepartment.Items.Add(new ListItem("Physical Education"));
        }

        private void BindFaculties(string department = "All")
        {
            //UserService userService = new UserService();
            WcfUserService.Service1Client wcfUserService = new WcfUserService.Service1Client();

            if (department == "All")
            {
                //var faculties = userService.GetFacilities();
                var faculties = wcfUserService.GetFacilities();

                rptFaculties.DataSource = faculties;
            }
            else
            {
                //var facultiesByDept = userService.GetFacultiesByDept(department);
                var facultiesByDept = wcfUserService.GetFacultiesByDept(department);

                rptFaculties.DataSource = facultiesByDept;
            }
            rptFaculties.DataBind();
        }


        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedDept = ddlDepartment.SelectedValue;
            BindFaculties(selectedDept);
        }

        protected void btnBlockUnblock_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string addNo = btn.CommandArgument;

            //UserService userService = new UserService();
            WcfUserService.Service1Client wcfUserService = new WcfUserService.Service1Client();

            //userService.ToggleBlock(addNo.ToString());
            wcfUserService.ToggleBlock(addNo.ToString());

            BindFaculties(ddlDepartment.SelectedValue);
        }
    }
}