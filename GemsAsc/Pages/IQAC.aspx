<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IQAC.aspx.cs" Inherits="GemsAsc.Pages.IQAC" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .heading-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap:10px;
        }

        .component-container {
            margin: 20px 0 40px;
        }

        .dropdown-style {
            width: 30%;
            min-width: 270px;
            font-weight: 600;
            font-size: 18px;
            border-bottom: 5px solid #16704C;   
        }

        .iqac-title {
            background-color: #f5f5f5;
            padding: 15px;
            border-left: 5px solid #16704C;
            font-size: 1.5rem;
            font-weight: bold;
            display: block;
        }
    </style>


    <div class="container mt-4">
        <div class="heading-container">
            <h2 class="iqac-title">Internal Quality Assurance Cell (IQAC)</h2>
            <asp:DropDownList ID="ddlComponents" runat="server" CssClass="form-select dropdown-style"
                AutoPostBack="true" OnSelectedIndexChanged="ddlComponents_SelectedIndexChanged">
            </asp:DropDownList>
        </div>

        <div class="component-container">
            <asp:PlaceHolder ID="phComponents" runat="server"></asp:PlaceHolder>
        </div>
    </div>
</asp:Content>
