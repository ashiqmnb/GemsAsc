using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages.Facilities
{
    public partial class Sports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var repo = new FacilityRepo();
                
                var sports = repo.GetSports();

                ddlFacilities.DataSource = sports;
                ddlFacilities.DataTextField = "Name";
                ddlFacilities.DataValueField = "Name";
                ddlFacilities.DataBind();

                ddlFacilities.Items.Insert(0, "-- Select a Facility --");

                
                var defaultFacility = sports.FirstOrDefault(f => f.Name == "Sports Ground");
                if (defaultFacility != null)
                {
                    ddlFacilities.SelectedValue = "Sports Ground";

                    imgFacility.ImageUrl = ResolveUrl(defaultFacility.ImageUrl);
                    imgFacility.Visible = true;

                    facilityTitle.InnerText = defaultFacility.Title;
                    facilityDesc.InnerText = defaultFacility.Description;
                }
            }
        }


        protected void ddlFacilities_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selected = ddlFacilities.SelectedValue;

            var repo = new FacilityRepo();

            var sports = repo.GetSports();

            if (selected != "-- Select a Facility --")
            {
                Facility facility = sports.Find(f => f.Name == selected);

                if (facility != null)
                {
                    imgFacility.ImageUrl = ResolveUrl(facility.ImageUrl);
                    imgFacility.Visible = true;

                    facilityTitle.InnerText = facility.Title;
                    facilityDesc.InnerText = facility.Description;
                }
            }
            else
            {
                imgFacility.Visible = false;
                facilityTitle.InnerText = "Sports Facilities";
                facilityDesc.InnerText = "GEMS College offers a diverse range of modern sports facilities that encourage physical fitness, teamwork, and personal growth. Our vibrant campus environment inspires students to engage in sports, build friendships, and embrace a healthy, active lifestyle.";
            }
        }
    }
}