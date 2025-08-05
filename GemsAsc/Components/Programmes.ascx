<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Programmes.ascx.cs" Inherits="GemsAsc.Components.Programmes" %>

<style>
    .programmes-section {
        padding: 40px 0;
    }

    .programmes-top {
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        margin-bottom: 30px;
        gap: 15px;
    }

    .programmes-heading {
        font-size: 2rem;
        font-weight: bold;
        color: #16704C;
        margin: 0;
    }

    .programmes-filter {
        display: flex;
        gap: 15px;
        flex-wrap: wrap;
    }


    .programmes-filter button {
        padding: 8px 20px;
        border: 2px solid #16704C;
        background-color: transparent;
        color: #16704C;
        border-radius: 30px;
        cursor: pointer;
        transition: 0.3s;
    }

    .programmes-filter button.active,
    .programmes-filter button:hover {
        background-color: #16704C;
        color: #fff;
    }

    .programme-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }

    .programme-card {
        background-color: #000;
        color: #fff;
        position: relative;
        overflow: hidden;
        border-radius: 10px;
        width: calc(25% - 20px);
        height: 150px;
        aspect-ratio: 4/3;
        background-size: cover;
        background-position: center;
        display: flex;
        align-items: flex-end;
        padding: 20px;
        font-size: 1.1rem;
        font-weight: bold;
        filter: grayscale(100%);
        transition: transform 0.3s ease;
    }

    .programme-card:hover {
        filter: grayscale(0);
        transform: scale(1.02);
    }

    .programme-card::before {
        content: "";
        position: absolute;
        inset: 0;
        background-color: rgba(0, 0, 0, 0.4);
        z-index: 0;
    }

    .programme-card span {
        position: relative;
        z-index: 1;
    }

    @media (max-width: 992px) {
        .programme-card {
            width: calc(50% - 20px);
        }
    }

    @media (max-width: 576px) {
        .programme-card {
            width: 40%;
        }
    }
</style>

<div class="programmes-section">
    <div class="programmes-top">
        <div class="programmes-heading">Programs</div>

        <div class="programmes-filter">
            <button type="button" class="filter-btn active" data-type="All" onclick="filterProgrammes('All')">All Programs</button>
            <button type="button" class="filter-btn" data-type="UG" onclick="filterProgrammes('UG')">UG Programs</button>
            <button type="button" class="filter-btn" data-type="PG" onclick="filterProgrammes('PG')">PG Programs</button>
        </div>
    </div>

    <div class="programme-grid" id="programmeGrid">
        <asp:Repeater ID="rptProgrammes" runat="server">
            <ItemTemplate>
                <div class="programme-card" 
                     data-type='<%# Eval("Type") %>' 
                     style='<%# "background-image: url(" + ResolveUrl(Eval("ImageUrl").ToString()) + ")" %>'>
                    <span><%# Eval("Name") %></span>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>

<script>
    function filterProgrammes(type) {
        document.querySelectorAll('.filter-btn').forEach(btn => {
            btn.classList.remove('active');
            if (btn.dataset.type === type) btn.classList.add('active');
        });

        document.querySelectorAll('.programme-card').forEach(card => {
            card.style.display = (type === "All" || card.dataset.type === type) ? "flex" : "none";
        });
    }
</script>