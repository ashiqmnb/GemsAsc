<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GemsAsc.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Login</title>
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
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      overflow: hidden;
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
      max-width: 400px;
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
  <form id="form2" runat="server">
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

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="erro-msg" />

            <!-- Email Field -->
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail" />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email" />
    
                <!-- Required Validation -->
                <asp:RequiredFieldValidator 
                    ID="rfvEmail" 
                    runat="server" 
                    ControlToValidate="txtEmail"
                    ErrorMessage="Email is required" 
                    CssClass="text-danger error-msg" 
                    Display="Dynamic" />
    
                <!-- Email Format Validation -->
                <asp:RegularExpressionValidator
                    ID="revEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email format"
                    CssClass="text-danger error-msg"
                    Display="Dynamic"
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" />
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword" />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password" />
    
                <!-- Required Validation -->
                <asp:RequiredFieldValidator 
                    ID="rfvPassword" 
                    runat="server" 
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password is required" 
                    CssClass="text-danger error-msg" 
                    Display="Dynamic" />
    
                <!-- Password Format Validation -->
                <asp:RegularExpressionValidator
                    ID="revPassword"
                    runat="server"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password must contain at least one uppercase, one lowercase, one number, and one special character"
                    CssClass="text-danger error-msg"
                    Display="Dynamic"
                    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" />
            </div>
            

            <asp:Button 
              ID="btnLogin" 
              runat="server" 
              Text="Login" 
              CssClass="btn btn-primary btn-block mt-3" 
              OnClick="btnLogin_Click" />

          </ContentTemplate>
        </asp:UpdatePanel>
        <div style="text-align: center; margin-top: 10px; display:flex; justify-content: space-between">
            <a href="<%= Page.GetRouteUrl("RegisterRoute", null) %>" style="font-size: 14px;">Student Register?</a>
            <a href="../Default.aspx" style="font-size: 14px;">Home</a>
        </div>
      </div>
    </div>
  </form>
</body>
</html>
