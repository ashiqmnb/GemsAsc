<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GemsAsc._Default" %>
<%@ Register Src="~/Components/BannerSlider.ascx" TagName="BannerSlider" TagPrefix="uc" %>
<%@ Register TagPrefix="uc" TagName="Statistics" Src="~/Components/Statistics.ascx" %>
<%@ Register TagPrefix="uc" TagName="WelcomeSection"  Src="~/Components/WelcomeSection.ascx" %>
<%@ Register Src="~/Components/RecentEvents.ascx" TagPrefix="uc" TagName="RecentEvents" %>
<%@ Register Src="~/Components/Programmes.ascx" TagPrefix="uc" TagName="Programmes" %>
<%@ Register Src="~/Components/GalleryComp.ascx" TagPrefix="uc" TagName="GalleryComp" %>






<asp:Content ID="BannerContent" ContentPlaceHolderID="BannerContent" runat="server">
    <uc:BannerSlider runat="server" ID="BannerSlider" />
    <uc:Statistics runat="server" ID="Statistics" />
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <uc:WelcomeSection runat="server" ID="WelcomeSection" />
    <uc:Programmes runat="server" ID="Programmes"/>
    <uc:RecentEvents runat="server" ID="RecentEvents" />
    <uc:GalleryComp runat="server" ID="GalleryComp" />
</asp:Content>