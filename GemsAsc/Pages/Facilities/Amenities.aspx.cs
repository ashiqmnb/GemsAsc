using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages.Facilities
{
    public partial class Amenities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var repo = new FacilityRepo();

                var sports = repo.GetAmenities();

                ddlFacilities.DataSource = sports;
                ddlFacilities.DataTextField = "Name";
                ddlFacilities.DataValueField = "Name";
                ddlFacilities.DataBind();

                ddlFacilities.Items.Insert(0, "-- Select a Facility --");


                var defaultFacility = sports.FirstOrDefault(f => f.Name == "Open Air Auditorium");
                if (defaultFacility != null)
                {
                    ddlFacilities.SelectedValue = "Open Air Auditorium";

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

            var sports = repo.GetAmenities();

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
                facilityTitle.InnerText = "Amenities";
                facilityDesc.InnerText = "GEMS College offers a wide range of modern amenities designed to enrich campus life and support student success. From cultural venues and libraries to comfortable hostels, transportation, and eco-friendly energy solutions, our facilities ensure a vibrant, safe, and inspiring environment for learning and growth.";
            }
        }
    }
}