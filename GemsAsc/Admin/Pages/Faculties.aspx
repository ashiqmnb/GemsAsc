<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Faculties.aspx.cs" Inherits="GemsAsc.Admin.Pages.Faculties" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .student-title {
            background-color: #f5f5f5;
            padding: 15px;
            border-left: 5px solid #16704C;
            margin-top: 30px;
            font-size: 1.5rem;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .filter-dropdown {
            font-size: 16px;
            padding: 8px;
            width: 280px;
            border-radius: 6px;
            font-weight: 600;
            border-bottom: 4px solid #16704C;
        }

        .faculty-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin-top: 20px;
        }

        .faculty-card {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
            background: #f9f9f9;
            box-shadow: 2px 2px 8px rgba(0,0,0,0.1);
        }
        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 12px;
        }
        .card-header h3 {
            margin: 0;
            color: #333;
        }
        .card-body {
            display: flex;
            justify-content: flex-start;
            align-items: flex-start;
        }
        .profile-pic {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
            border: 2px solid #16704C;
        }
        .card-column {
            flex: 1;
        }
        .card-column p {
            margin: 6px 0;
            font-size: 14px;
        }
        .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 14px;
        }
        .btn-danger {
            background: #dc3545;
            color: white;
        }
        .btn-success {
            background: #28a745;
            color: white;
        }

    </style>

    <div>
        <div class="student-title">
            <span>Faculties</span>
            <asp:DropDownList ID="ddlDepartment" runat="server" 
                CssClass="filter-dropdown" AutoPostBack="true" 
                OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged">
            </asp:DropDownList>
        </div>

        <div class="faculty-container">
            <asp:Repeater ID="rptFaculties" runat="server">
                <ItemTemplate>
                    <div class="faculty-card">

                        <div class="card-header">
                            <h3><%# Eval("Name") %></h3>
                            <asp:Button 
                                ID="btnBlockUnblockFaculty" 
                                runat="server" 
                                Text='<%# (bool)Eval("IsBlocked") ? "Unblock" : "Block" %>' 
                                CommandArgument='<%# Eval("UserID") %>' 
                                OnClick="btnBlockUnblock_Click"
                                CssClass='<%# (bool)Eval("IsBlocked") ? "btn btn-success" : "btn btn-danger" %>' />
                        </div>

                        <div class="card-body">
                            <img src='<%# Eval("ImageUrl") %>' alt="Profile" class="profile-pic" />

                            <div class="card-column">
                                <p>Email: <b><%# Eval("Email") %></b></p>
                                <p>Department:  <b><%# Eval("Department") %></b></p>
                                <p>Designation: <b><%# Eval("Designation") %></b></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
