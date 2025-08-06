using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace GemsAsc
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);


            routes.MapPageRoute("AdminDashboardRoute", "Admin/Dashboard", "~/Admin/Pages/Dashboard.aspx");
            routes.MapPageRoute("LoginRoute", "Login", "~/Admin/AdminLogin.aspx");

            routes.MapPageRoute("AboutUsRoute", "AboutUs", "~/Pages/AboutUs.aspx");
            routes.MapPageRoute("MessageRoute", "Message", "~/Pages/Message.aspx");
        }
    }
}
