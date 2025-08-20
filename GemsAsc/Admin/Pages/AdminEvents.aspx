<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminEvents.aspx.cs" Inherits="GemsAsc.Admin.Pages.AdminEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   <style>
       .events-title {
            background-color: #f5f5f5;
            padding: 10px;
            border-left: 5px solid #16704C;
            font-size: 1.5rem;
            font-weight: bold;
            display: block;
            width: 100%;
       }

       .events-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px 0;
        }

        .event-card {
            flex: 1 1 300px;
            max-width: 280px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            text-align: center;
            text-decoration: none;
        }

        .event-card:hover {
            transform: scale(1.03);
        }

        .event-image {
            width: 100%;
            height: 280px;
            object-fit: cover;
        }

        .event-content {
            padding: 15px;
        }

        .event-title {
            font-size: 1rem;
            font-weight: 600;
            margin-bottom: 10px;
            color: #2b2b2b;
        }

        .event-date {
            font-size: 0.8rem;
            color: #888;
            margin-top: 8px;
        }

        .section-divider {
            border: none;
            border-top: 2px solid #16704C;
            margin: 10px auto;
            width: 100%;
        }
   </style>


    <div class="container py-4">
        <h1 class="events-title">Admin Events</h1>

        <div class="events-container">
            <asp:Repeater ID="rptEvents" runat="server">
                <ItemTemplate>
                    <a href='<%# GetRouteUrl("AdminEventByIdRoute", new { id = Eval("EventID") }) %>' class="event-card">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Event Image" />
                        <div class="event-content">
                            <div class="event-title"><%# Eval("Title") %></div>
                            <div class="event-date"><%# Eval("Date", "{0:dd MMM yyyy}") %></div>
                        </div>
                    </a>
                </ItemTemplate>
            </asp:Repeater>
        </div>


    </div>
</asp:Content>
