using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Components
{
    public partial class RecentEvents : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEvents();
            }
        }

        private void BindEvents()
        {
            var eventRepo = new EventsRepo();
            var events = eventRepo.GetAllEvents();

            var eventViewModels = events.Select(ev => new
            {
                ev.Title,
                ev.Date,
                Image = ev.Images != null && ev.Images.Any() ? ev.Images.First() : "~/Assets/Images/placeholder.jpg"
            }).ToList();

            rptEvents.DataSource = eventViewModels;
            rptEvents.DataBind();
        }
    }
}