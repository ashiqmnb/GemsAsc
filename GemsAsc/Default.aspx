<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GemsAsc._Default" %>
<%@ Register Src="~/Components/BannerSlider.ascx" TagName="BannerSlider" TagPrefix="uc" %>




<asp:Content ID="BannerContent" ContentPlaceHolderID="BannerContent" runat="server">
    <uc:BannerSlider runat="server" ID="BannerSlider1" />
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

</asp:Content>