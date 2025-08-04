<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GemsAsc._Default" %>
<%@ Register Src="~/Components/BannerSlider.ascx" TagName="BannerSlider" TagPrefix="uc" %>
<%@ Register TagPrefix="uc" TagName="Statistics" Src="~/Components/Statistics.ascx" %>
<%@ Register TagPrefix="uc" TagName="WelcomeSection"  Src="~/Components/WelcomeSection.ascx" %>







<asp:Content ID="BannerContent" ContentPlaceHolderID="BannerContent" runat="server">
    <uc:BannerSlider runat="server" ID="BannerSlider1" />
    <uc:Statistics runat="server" ID="Statistics" />
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <uc:WelcomeSection runat="server" ID="WelcomeSection" />
</asp:Content>