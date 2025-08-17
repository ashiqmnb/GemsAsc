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

            routes.MapPageRoute("LoginRoute", "Login", "~/Pages/Login.aspx");
            routes.MapPageRoute("RegisterRoute", "Register", "~/Pages/Register.aspx");
            routes.MapPageRoute("AccessDeniedRoute", "AccessDenied", "~/Pages/AccessDenied.aspx");

            routes.MapPageRoute("AboutUsRoute", "AboutUs", "~/Pages/About/AboutUs.aspx");
            routes.MapPageRoute("MessageRoute", "Message", "~/Pages/About/Message.aspx");
            routes.MapPageRoute("BoardOfDirectorsRoute", "Directors-Board", "~/Pages/About/BoardOfDirectors.aspx");
            routes.MapPageRoute("CodeOfConductRoute", "Code-Of-Conduct", "~/Pages/About/CodeOfConduct.aspx");

            routes.MapPageRoute("DepartmentByNameRoute", "Department/{name}", "~/Pages/Department.aspx");

            routes.MapPageRoute("AcademicCalendarRoute", "Academic-Calendar", "~/Pages/Academics/AcademicCalendar.aspx");
            routes.MapPageRoute("ProgrammesRoute", "Programmes", "~/Pages/Academics/Programmes.aspx");

            routes.MapPageRoute("SportsRoute", "Facilities-Sports", "~/Pages/Facilities/Sports.aspx");
            routes.MapPageRoute("LearningsRoute", "Facilities-Learnings", "~/Pages/Facilities/Learnings.aspx");
            routes.MapPageRoute("AmenitiesRoute", "Facilities-Amenities", "~/Pages/Facilities/Amenities.aspx");

            routes.MapPageRoute("IqacRoute", "IQAC", "~/Pages/IQAC.aspx");

            routes.MapPageRoute("GalleryRoute", "Gallery", "~/Pages/GalleryPage.aspx");

            routes.MapPageRoute("EventsRoute", "Events", "~/Pages/Events.aspx");

            routes.MapPageRoute("UserProfileRoute", "UserProfile", "~/Pages/UserProfile.aspx");


            //Admin
            routes.MapPageRoute("AdminDashboardRoute", "Admin/Dashboard", "~/Admin/Pages/Dashboard.aspx");
            routes.MapPageRoute("AdminStudentsRoute", "Admin/Students", "~/Admin/Pages/Students.aspx");
            routes.MapPageRoute("AdminFacultiesRoute", "Admin/Faculties", "~/Admin/Pages/Faculties.aspx");
            routes.MapPageRoute("AdminDepartmentsRoute", "Admin/Departments", "~/Admin/Pages/Departments.aspx");
            routes.MapPageRoute("AdminAddFacultyRoute", "Admin/AddNewFaculty", "~/Admin/Pages/AddFaculty.aspx");


            //Faculty
            routes.MapPageRoute("FacultyDashboardRoute", "Faculty/Dashboard", "~/Faculty/Dashboard.aspx");

        }
    }
}
