<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="GemsAsc.Pages.UserProfile" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>User Profile Page</h2>
    
    <asp:Label ID="lblName" runat="server"></asp:Label>
    <asp:Label ID="lblRole" runat="server"></asp:Label>
    <asp:Label ID="lblId" runat="server"></asp:Label>


    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Style="margin-top:10px;" />
</asp:Content>
