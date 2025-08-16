<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="GemsAsc.Pages.UserProfile" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <style>
        .profile-container {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        .profile-card {
            max-width: 400px;
            width: 100%;
            background: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
            text-align: center;
            font-family: 'Segoe UI', sans-serif;
        }

        .profile-image {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
        }

        .profile-card h2 {
            margin: 10px 0;
            color: #333;
        }

        .profile-card p {
            margin: 5px 0;
            font-size: 14px;
            color: #555;
        }

        @media (max-width: 600px) {
            .profile-card {
                max-width: 100%;
                margin: 10px;
            }
        }

    </style>


    <asp:Panel ID="pnlProfile" runat="server" CssClass="profile-container">
        <div class="profile-card">
            <asp:Image ID="imgProfile" runat="server" CssClass="profile-image" />
            
            <h2><asp:Label ID="lblName" runat="server"></asp:Label></h2>
            <p><b>Email:</b> <asp:Label ID="lblEmail" runat="server"></asp:Label></p>
            <p><b>Admission No:</b> <asp:Label ID="lblAddNo" runat="server"></asp:Label></p>
            <p><b>Register No:</b> <asp:Label ID="lblRegisterNo" runat="server"></asp:Label></p>
            <p><b>Course:</b> <asp:Label ID="lblCourse" runat="server"></asp:Label></p>
            <p><b>Department:</b> <asp:Label ID="lblDepartment" runat="server"></asp:Label></p>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="btn btn-danger" />
        </div>
    </asp:Panel>

    
</asp:Content>
