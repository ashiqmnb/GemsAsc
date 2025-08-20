using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin.Pages
{
    public partial class DepartmentById : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string deptName = Page.RouteData.Values["name"] as string;

                if (!string.IsNullOrEmpty(deptName))
                {
                    LoadDepartment(deptName);
                }
                else
                {
                    lblError.Text = "Invalid or missing department Name";
                }
            }
        }

        private void LoadDepartment(string deptName)
        {
            WcfUserService.Service1Client wcfUserService = new WcfUserService.Service1Client();

            var dept = wcfUserService.GetDepartmentsByName(deptName);
            var faculties = wcfUserService.GetFacultiesByDept(deptName);

            if (dept != null && faculties != null)
            {
                lblName.Text = $"Department of {dept.Name}";
                lblDescription.Text = dept.Description;
                lblStudents.Text = $"Total Students : {dept.Students}";

                rptFaculties.DataSource = faculties;
                rptFaculties.DataBind();
            }
            else
            {
                lblError.Text = "Department not found.";
            }
        }
    }
}