<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="GemsAsc.Admin.Pages.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .dept-title {
            background-color: #f5f5f5;
            padding: 15px;
            border-left: 5px solid #16704C;
            margin-top: 30px;
            font-size: 1.5rem;
            font-weight: bold;
        }
        .dept-list {
            list-style: none;
            padding: 0;
            margin: 20px auto;
            width: 80%;
        }
        .dept-item {
            background: #fff;
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
        }
        .top-card {
            display: flex;
            justify-content: space-between;
        }
        .dept-name {
            font-size: 1.2rem;
            font-weight: bold;
            color: #16704C;
        }
        .dept-description {
            font-size: 14px;
            margin: 5px 0;
            color: #555;
        }
        .dept-students {
            font-weight: bold;
            color: #16704C;
        }
    </style>

    <div>
        <h1 class="dept-title">Departments</h1>

        <asp:Repeater ID="rptDepartments" runat="server">
            <HeaderTemplate>
                <ul class="dept-list">
            </HeaderTemplate>
            <ItemTemplate>
                <li class="dept-item"
                    onclick="window.location='<%# GetRouteUrl("AdminDepartmentByNameRoute", new { name = Eval("Name") }) %>'" 
                    style="cursor:pointer;">
                    <div class="top-card">
                        <div class="dept-name">Departments of <%# Eval("Name") %></div>
                        <div class="dept-students">Students: <%# Eval("Students") %></div>
                    </div>
                    <%--<div class="dept-description"><%# Eval("Description") %></div>--%>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
    </div>

</asp:Content>