<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GemsAsc.Pages.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

    <%--Toastr.js integration--%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
      window.AppToast = {
        show: function (message, icon, position, ms) {
          Swal.fire({
            icon: icon || 'success',
            title: message,
            toast: true,
            position: position || 'top-end',
            showConfirmButton: false,
            timer: ms || 3000,
            timerProgressBar: true
          });
        },
        showAndRedirect: function (message, url, icon, ms) {
          Swal.fire({
            icon: icon || 'success',
            title: message,
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: ms || 1500,
            timerProgressBar: true,
            didClose: function () {
              if (url) window.location.href = url;
            }
          });
        }
      };
    </script>
    
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .login-container {
            position: relative;
            height: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            padding: 30px;
        }

        .login-container::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('../Assets/Images/Banner/homeImge2.webp');
            background-size: cover;
            background-position: center;
            filter: blur(2px);
            z-index: 0;
        }

        .login-card {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            width: 100%;
        }

        .logo-header {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
        }

        .logo-header img {
            height: 80px;
        }

        .collage-name {
            text-align: center;
        }

        .error-msg {
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-card">
                <div class="logo-header">
                    <img src="../Assets/Images/Logo/gemslogo.png" alt="Gems Logo" />
                    <div class="collage-name">
                        <h5 class="mb-0 fw-bold">GEMS ARTS AND SCIENCE COLLEGE</h5>
                        <small class="text-muted fw-semibold">(AUTONOMOUS)</small>
                    </div>
                </div>

                <asp:ScriptManager runat="server" ID="ScriptManager1" />
                <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                    <ContentTemplate>

                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="error-msg" />

                        <div class="form-group">
                            <asp:Label Text="Name" AssociatedControlID="txtName" runat="server" />
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter name" />
                            <asp:RequiredFieldValidator ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup" />
                        </div>

                        <div class="form-group">
                            <asp:Label Text="Email" AssociatedControlID="txtEmail" runat="server" />
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email" />
                            <asp:RequiredFieldValidator ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup" />
                            <asp:RegularExpressionValidator ControlToValidate="txtEmail" ErrorMessage="Invalid email format" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ValidationGroup="RegisterGroup" />
                        </div>

                        <div class="form-group">
                            <asp:Label Text="Password" AssociatedControlID="txtPassword" runat="server" />
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password" />
                            <asp:RequiredFieldValidator ControlToValidate="txtPassword" ErrorMessage="Password is required" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup" />
                            <asp:RegularExpressionValidator ControlToValidate="txtPassword" ErrorMessage="Password must contain uppercase, lowercase, number, and special character" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" ValidationGroup="RegisterGroup" />
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label Text="Department" AssociatedControlID="ddlDepartment" runat="server" />
                                <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged"></asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="ddlDepartment" InitialValue="" ErrorMessage="Select a department" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup"/>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label Text="Course" AssociatedControlID="ddlCourse" runat="server" />
                                <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control"></asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="ddlCourse" InitialValue="" ErrorMessage="Select a course" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label Text="Admission Number" AssociatedControlID="txtAdmissionNo" runat="server" />
                                <asp:TextBox ID="txtAdmissionNo" runat="server" CssClass="form-control" placeholder="Enter admission number" TextMode="Number" />
                                <asp:RequiredFieldValidator ControlToValidate="txtAdmissionNo" ErrorMessage="Admission number is required" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup" />
                                <asp:RegularExpressionValidator ControlToValidate="txtAdmissionNo" VErrorMessage="Admission number must be numeric" ValidationExpression="^\d+$" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup"/>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label Text="University Register Number" AssociatedControlID="txtUniversityNo" runat="server" />
                                <asp:TextBox ID="txtUniversityNo" runat="server" CssClass="form-control" placeholder="Enter university register number" />
                                <asp:RequiredFieldValidator ControlToValidate="txtUniversityNo" ErrorMessage="University register number is required" CssClass="text-danger error-msg" runat="server" Display="Dynamic" ValidationGroup="RegisterGroup" />
                            </div>
                        </div>

                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary btn-block mt-3" OnClick="btnRegister_Click" 
                            CausesValidation="true" ValidationGroup="RegisterGroup"
                            />

                    </ContentTemplate>
                </asp:UpdatePanel>
                <div style="text-align: center; margin-top: 10px; display:flex; justify-content: space-between">
                    <a href="<%= Page.GetRouteUrl("LoginRoute", null) %>" style="font-size: 14px;">Already have an account? Login</a>
                    <a href="/" style="font-size: 14px;">Home</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
