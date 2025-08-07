using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages
{
    public partial class Department : System.Web.UI.Page
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

        private void LoadDepartment(string name)
        {
            DepartmentRepo repo = new DepartmentRepo();
            var dept = repo.GetDepartmentByName(name);

            if(dept != null)
            {
                lblName.Text = $"Department of {dept.Name}";
                lblDescription.Text = dept.Description;

                var facultyRepo = new FacultyRepo();
                var faculties = facultyRepo.GetFaculties();

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