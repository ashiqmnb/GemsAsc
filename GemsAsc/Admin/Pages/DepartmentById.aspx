<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DepartmentById.aspx.cs" Inherits="GemsAsc.Admin.Pages.DepartmentById" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            margin-top:30px;
            margin-bottom:30px;
        }

        .dept-title {
            background-color: #f5f5f5;
            padding: 15px;
            border-left: 5px solid #16704C;
            margin-top: 30px;
            font-size: 1.5rem;
            font-weight: bold;
            display: block;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .sub-title {
            margin-top: 20px;
            font-size: 22px;
        }
    
        .description {
            font-size: 18px;
        }

        .director-card {
            width: 180px;
            height: 260px;
        }

        .director-card img {
            height: 75%;
        }

        .director-card h5{
            margin-top: 4px;
            margin-bottom: 4px;
            font-size: 16px;
        }

        .director-card P {
            font-size: 14px;
        }

        .board-grid {
            display: flex;
            justify-content:start;
            flex-wrap:wrap;
            gap: 15px;
            margin-top: 20px;
        }
        .card-base {
            background-color: #16704C;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.8);
            color: white;
            overflow: hidden;
        }

        .card-base img {
            width: 100%;
            object-fit: cover;
            border-radius: 8px 8px 0 0;
        }

        .faculty-container {
            margin-top: 30px;
        }

    </style>
    <div class="container">
        <div class="dept-title">
            <asp:Label ID="lblName" runat="server" Font-Bold="True" />
            <asp:Label ID="lblStudents" runat="server"/>
        </div>

        <h4 class="sub-title">Profile</h4>
        <asp:Label ID="lblDescription" runat="server" CssClass="description" />

        <div class="faculty-container">
            <h4 class="profile">Faculties</h4>
            <div class="board-grid">
                <asp:Repeater ID="rptFaculties" runat="server">
                    <ItemTemplate>
                        <div class="card-base director-card">
                            <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt='<%# Eval("Name") %>' />
                            <h5><%# Eval("Name") %></h5>
                            <p><%# Eval("Designation") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

        <asp:Label ID="lblError" runat="server" ForeColor="Red"  />
    </div>
</asp:Content>
