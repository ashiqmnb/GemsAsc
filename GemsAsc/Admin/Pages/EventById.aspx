<%@ Page Title="Event Details" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master"
    AutoEventWireup="true" CodeBehind="EventById.aspx.cs" Inherits="GemsAsc.Admin.Pages.EventById" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
         .event-details-container {
             display: flex;
             justify-content: center;
             margin: 30px auto;
             max-width: 900px;
         }
         .event-card {
             background: #fff;
             border-radius: 12px;
             box-shadow: 0 4px 12px rgba(0,0,0,0.1);
             overflow: hidden;
             padding: 20px;
             display: flex;
             flex-direction: column;
             gap: 15px;
         }
         .event-image {
            height: 400px;
            width: 100%;
            object-fit: contain;
            border-radius: 10px;
        }
         .event-title {
             font-size: 24px;
             font-weight: bold;
             margin-bottom: 10px;
             color: #333;
         }
         .event-date {
             font-size: 16px;
             color: #666;
         }
         .event-description {
             font-size: 18px;
             line-height: 1.6;
             color: #444;
         }
    </style>



    <div class="event-details-container">
        <div class="event-card">

            <h2 class="event-title">
                <asp:Label ID="lblTitle" runat="server" />
            </h2>
            <asp:Image ID="imgEvent" runat="server" CssClass="event-image" AlternateText="Event Image" />

            <div class="event-date">
                <i class="fa fa-calendar"></i>
                <asp:Label ID="lblDate" runat="server" />
            </div>

            <p class="event-description">
                <asp:Label ID="lblDescription" runat="server" />
            </p>
        </div>
    </div>
</asp:Content>
