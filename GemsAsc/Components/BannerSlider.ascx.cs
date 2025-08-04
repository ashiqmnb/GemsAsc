using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Components
{
    public partial class BannerSlider : System.Web.UI.UserControl
    {
        public class Banner
        {
            public string ImageUrl { get; set; }    
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            var conStr = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;
            //if (!IsPostBack)
            //{
            //    List<Banner> banners = new List<Banner>
            //    {
            //        new Banner{ ImageUrl = ResolveUrl("~/Assets/Images/Banner/homeimge2.webp")},
            //        new Banner{ ImageUrl = ResolveUrl("~/Assets/Images/Banner/homeimge1.webp")},
            //        new Banner{ ImageUrl = ResolveUrl("~/Assets/Images/Banner/homeimge3.webp")},


            //    };

            //    rptBanners.DataSource = banners;
            //    rptBanners.DataBind();
            //}
        }
    }
}