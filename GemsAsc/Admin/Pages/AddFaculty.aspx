<%@ Page Title="Add Faculty" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" 
    AutoEventWireup="true" CodeBehind="AddFaculty.aspx.cs" 
    Inherits="GemsAsc.Admin.Pages.AddFaculty" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
        }

        .faculty-wrapper {
            position: relative;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            background: linear-gradient(135deg, #f8f9fa, #e9f5f1);
            padding: 40px 20px;
        }

        .faculty-card {
            width: 100%;
            max-width: 700px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            overflow: hidden;
            animation: fadeInUp 0.6s ease-in-out;
        }

        .faculty-header {
            color: #16704C;
            text-align: center;
            padding: 20px;
        }

        .faculty-header h2 {
            margin: 0;
            font-size: 1.8rem;
            font-weight: bold;
        }

        .faculty-body {
            padding: 10px 50px 20px 50px;
        }

        .form-group {
            margin-bottom: 18px; 
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .form-control, .form-control-file, .form-select {
            height: 30px;
            width: 100%;
            box-shadow: none;
            border: 1px solid #ced4da;
            transition: all 0.2s;
            border-radius: 8px;
            padding-left: 15px;
            
        }

        .form-control:focus, .form-select:focus {
            border-color: #16704C;
            box-shadow: 0 0 0 0.2rem rgba(22, 112, 76, 0.25);
        }

        .btn {
            border-radius: 8px;
            font-weight: 500;
        }

        .btn-success {
            background: #16704C;
            border-color: #16704C;
            height: 30px;
            width: 150px;
            color: white;
            font-weight: 600;
        }

        .btn-success:hover {
            background: #125c3e;
        }

        .btn-secondary {
            border-radius: 6px;
        }

        .error-msg {
            font-size: 14px;
            color: red;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>

    <div class="faculty-wrapper">
        <div class="faculty-card">
            <div class="faculty-header">
                <h2>Add Faculty</h2>
                <small>Fill the details below</small>
            </div>
            <div class="faculty-body">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger mb-3" />

                <div class="form-group">
                    <asp:Label Text="Name" AssociatedControlID="txtName" runat="server" />
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter name" />
                    <asp:RequiredFieldValidator ControlToValidate="txtName" ErrorMessage="Name is required"
                        CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="FacultyGroup" />
                </div>

                <div class="form-group">
                    <asp:Label Text="Email" AssociatedControlID="txtEmail" runat="server" />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email" />
                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" ErrorMessage="Email is required"
                        CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="FacultyGroup" />
                    <asp:RegularExpressionValidator ControlToValidate="txtEmail" 
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                        ErrorMessage="Invalid email format"
                        CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="FacultyGroup" />
                </div>

                <div class="form-group">
                    <asp:Label Text="Password" AssociatedControlID="txtPassword" runat="server" />
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password" />
                    <asp:RequiredFieldValidator ControlToValidate="txtPassword" ErrorMessage="Password is required"
                        CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="FacultyGroup" />
                    <asp:RegularExpressionValidator ControlToValidate="txtPassword"
                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
                        ErrorMessage="Password must have uppercase, lowercase, number, and special character"
                        CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="FacultyGroup" />
                </div>

                <div class="form-group">
                    <asp:Label Text="Department" AssociatedControlID="ddlDepartment" runat="server" />
                    <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ControlToValidate="ddlDepartment" InitialValue=""
                        ErrorMessage="Select a department" CssClass="text-danger error-msg" runat="server"
                        Display="Dynamic" ValidationGroup="FacultyGroup" />
                </div>

                <div class="form-group">
                    <asp:Label Text="Designation" AssociatedControlID="ddlDesignation" runat="server" />
                    <asp:DropDownList ID="ddlDesignation" runat="server" CssClass="form-control">
                        <asp:ListItem Text="-- Select Designation --" Value="" />
                        <asp:ListItem Text="Assistant Professor" Value="Assistant Professor" />
                        <asp:ListItem Text="HOD, Assistant Professor" Value="HOD, Assistant Professor" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ControlToValidate="ddlDesignation" InitialValue=""
                        ErrorMessage="Select a designation" CssClass="text-danger error-msg" runat="server"
                        Display="Dynamic" ValidationGroup="FacultyGroup" />
                </div>

                <div class="form-group">
                    <asp:Label Text="Profile Image" AssociatedControlID="fileUpload" runat="server" />
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="form-control-file" />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload Image" OnClick="btnUpload_Click" CssClass="btn btn-secondary mt-2" />
                    <asp:RegularExpressionValidator ControlToValidate="fileUpload"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|bmp)$"
                        ErrorMessage="Only image files are allowed (.jpg, .jpeg, .png, .gif, .bmp)"
                        CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="FacultyGroup" />
                    <br />
                    <asp:Image ID="imgPreview" runat="server" Width="150px" CssClass="mt-2 border rounded" />
                </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Add Faculty"
                    CssClass="btn btn-success btn-block mt-3"
                    OnClick="btnSubmit_Click"
                    CausesValidation="true" ValidationGroup="FacultyGroup" />
            </div>
        </div>
    </div>
</asp:Content>
