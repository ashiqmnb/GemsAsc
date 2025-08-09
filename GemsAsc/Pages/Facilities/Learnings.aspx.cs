using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages.Facilities
{
    public partial class Learnings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var repo = new FacilityRepo();

                var sports = repo.GetLearnings();

                ddlFacilities.DataSource = sports;
                ddlFacilities.DataTextField = "Name";
                ddlFacilities.DataValueField = "Name";
                ddlFacilities.DataBind();

                ddlFacilities.Items.Insert(0, "-- Select a Facility --");


                var defaultFacility = sports.FirstOrDefault(f => f.Name == "Computer Lab");
                if (defaultFacility != null)
                {
                    ddlFacilities.SelectedValue = "Computer Lab";

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

            var sports = repo.GetLearnings();

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
                facilityTitle.InnerText = "Experiential Learning Cernters";
                facilityDesc.InnerText = "GEMS College offers state-of-the-art learning facilities and laboratories designed to inspire innovation, research, and hands-on learning. From advanced computer and multimedia labs to specialized science and geology facilities, our resources empower students to explore, experiment, and excel in their chosen fields.";
            }
        }
    }
}