<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Amenities.aspx.cs" Inherits="GemsAsc.Pages.Facilities.Amenities" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            margin-top: 40px;
            margin-bottom: 40px;
        }
    
        .select-box {
            width: 50%;
            padding: 8px;
            border-radius: 10px;
            font-weight: 600;
        }
    
        .form-group {
            display:flex;
            justify-content: end;
        }
    
        .facility {
            margin-top: 20px;
        }
    
        .facility h2 {
            background-color: #f5f5f5;
            padding: 10px;
            border-left: 5px solid #16704C;
            margin-top: 20px;
            margin-bottom: 20px;
            font-size: 1.2rem;
            font-weight: bold;
            display: block;
            width: 100%;
        }
    
        .facility-content {
            display: flex;
            align-items: flex-start;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
    
        .facility-content img {
            max-width: 300px;
            height: auto;
            border-radius: 8px;
        }
    
        .facility-content p {
            text-align: justify;
            line-height: 1.6;
            color: #444;
            max-width: 500px;
        }
    
        /* Small screen adjustments */
        @media (max-width: 768px) {
            .facility-content {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }
    
            .facility-content p {
                max-width: 100%;
                padding: 0 10px;
            }
        }

    </style>

    <div class="container">        
        <div class="form-group">
            <asp:DropDownList ID="ddlFacilities" CssClass="select-box" runat="server" AutoPostBack="true" 
                OnSelectedIndexChanged="ddlFacilities_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
    
        <div class="facility">
            <h2 id="facilityTitle" runat="server"></h2>
            <div class="facility-content">
                <asp:Image ID="imgFacility" runat="server" Visible="false" />
                <p id="facilityDesc" runat="server"></p>
            </div>
        </div>
    </div>
</asp:Content>
