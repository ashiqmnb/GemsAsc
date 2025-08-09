<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademicCalendar.aspx.cs" Inherits="GemsAsc.Pages.AcademicCalendar" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .container {
            max-width: 900px;
            padding: 30px 15px;
        }

        .title {
            background-color: #f5f5f5;
            padding: 10px;
            border-left: 5px solid #16704C;
            margin-top: 20px;
            margin-block: 10px;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .buttons {
            margin-top: 20px;
            display:flex;
            justify-content: center;
            gap: 10px;
        }
    </style>
    
    <div class="container">
        <div class="title">UNIVERSITY ACADEMIC CUM EXAMINATION CALENDAR</div>
        <div class="buttons">
            <a href="../Assets/AcademicCalendar/ac2023-24.pdf" class="btn btn-success fw-bold" target="_blank">
                2023-24
            </a>
            <a href="../Assets/AcademicCalendar/ac2022-23.pdf" class="btn btn-success fw-bold" target="_blank">
                2022-23
            </a>
            <a href="../Assets/AcademicCalendar/ac2021-22.pdf" class="btn btn-success fw-bold" target="_blank">
                2021-22
            </a>
        </div>

    </div>
</asp:Content>
