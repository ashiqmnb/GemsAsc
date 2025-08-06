<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GemsAsc.Admin.AdminLogin" %>

<!DOCTYPE html>
<html>
<head>
  <title>Admin Login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
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
      filter: blur(4px);
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

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="erro-msg" />

            <div class="form-group">
              <asp:Label ID="lblUsername" runat="server" Text="Username" AssociatedControlID="txtUsername" />
              <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username" />
              <asp:RequiredFieldValidator 
                  ID="rfvUsername" 
                  runat="server" 
                  ControlToValidate="txtUsername"
                  ErrorMessage="Username is required" 
                  
                  CssClass="text-danger error-msg" 
                  Display="Dynamic" />
            </div>

            <div class="form-group">
              <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword" />
              <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password" />
              <asp:RequiredFieldValidator 
                  ID="rfvPassword" 
                  runat="server" 
                  ControlToValidate="txtPassword"
                  ErrorMessage="Password is required" 
                  CssClass="text-danger error-msg" 
                  Display="Dynamic" />
            </div>

            <asp:Button 
              ID="btnLogin" 
              runat="server" 
              Text="Login" 
              CssClass="btn btn-primary btn-block mt-3" 
              OnClick="btnLogin_Click" />

          </ContentTemplate>
        </asp:UpdatePanel>
      </div>
    </div>
  </form>
</body>
</html>
