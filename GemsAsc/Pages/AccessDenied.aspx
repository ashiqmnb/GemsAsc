<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccessDenied.aspx.cs" Inherits="GemsAsc.Pages.AccessDenied" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }

        .access-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 60vh;
            text-align: center;
            padding: 20px;
        }

        .error-icon {
            font-size: 80px;
            color: #dc3545;
            margin-bottom: 20px;
        }

        .error-title {
            font-size: 2.5rem;
            font-weight: bold;
            color: #343a40;
        }

        .error-message {
            font-size: 1.1rem;
            margin: 15px 0;
            color: #6c757d;
        }

        .btn-home {
            background-color: #16704C;
            color: white;
            border-radius: 8px;
            padding: 10px 20px;
            text-decoration: none;
            transition: 0.3s;
        }

    </style>
        <div class="access-container">
            <div class="error-icon">
                <i class="bi bi-x-circle-fill"></i>
            </div>
            <h1 class="error-title">Access Denied</h1>
            <p class="error-message">
                Sorry, you don't have permission to access this page.
            </p>
            <a href="/" class="btn-home">Go to Home</a>
        </div>

</asp:Content>
