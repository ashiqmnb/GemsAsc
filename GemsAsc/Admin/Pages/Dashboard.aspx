<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GemsAsc.Admin.Pages.Dashboard" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome, Admin</h2>
    <p>This is your dashboard.</p>

    <asp:Label ID="lblName" runat="server"></asp:Label>
<asp:Label ID="lblRole" runat="server"></asp:Label>
<asp:Label ID="lblId" runat="server"></asp:Label>


</asp:Content>
