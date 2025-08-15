<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GemsAsc.Faculty.Dashboard" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome, Faculty</h2>
    <p>This is your dashboard.</p>

    <asp:Label ID="lblName" runat="server"></asp:Label>
<asp:Label ID="lblRole" runat="server"></asp:Label>
<asp:Label ID="lblId" runat="server"></asp:Label>
</asp:Content>
