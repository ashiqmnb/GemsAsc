<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BoardOfDirectors.aspx.cs" Inherits="GemsAsc.Pages.BoardOfDirectors" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>

    .container {
        max-width: 1300px;
        margin: 0 auto;
        padding: 30px 20px;
    }

    .top-section {
        display: flex;
        justify-content: center;
        gap: 40px;
        flex-wrap: wrap;
        margin-bottom: 40px;
    }

    .card-base {
        background-color: #16704C;
        border-radius: 12px;
        text-align: center;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        color: white;
        overflow: hidden;
    }

    .card-base img {
        width: 100%;
        object-fit: cover;
        border-radius: 12px 12px 0 0;
    }

    .card-base h5{
        margin-top: 8px;
        margin-bottom: 4px;
        font-size: 18px;
    }

    .card-base p {
        font-weight: bold;
        margin: 0px 0 10px;
    }

    /* Specific size for top cards */
    .top-card {
        width: 250px;
        height: 350px;
    }

    .top-card img {
        height: 80%;
    }

    /* Specific size for director cards */
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
        justify-content:center;
        flex-wrap:wrap;
        gap: 10px;
    }



</style>


    <div class="container">

        <!-- Top Section: Chairman & Vice Chairman -->
        <div class="top-section">
            <div class="card-base top-card">
                <img src="../Assets/Images/People/chairman.jpg" alt="Chairman" />
                <h5>Mr. Manjalamkuzhi Ali</h5>
                <p>Chairman</p>
            </div>
            <div class="card-base top-card">
                <img src="../Assets/Images/Directors/vicechairman.jpg" alt="Vice Chairman" />
                <h5>Mr. M. Vasudevan</h5>
                <p>Vice Chairman</p>
            </div>
        </div>

        <!-- Directors Section -->
        <div class="board-grid">
            <asp:Repeater ID="rptDirectors" runat="server">
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
</asp:Content>
