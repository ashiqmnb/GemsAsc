<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RecentEvents.ascx.cs" Inherits="GemsAsc.Components.RecentEvents" %>

<style>
    .recent-events-section {
        padding: 40px 0;
        text-align: center;
    }

    .recent-events-heading {
        font-size: 2rem;
        font-weight: bold;
        margin-bottom: 30px;
        color: #16704C;
    }

    .recent-events {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }

    .event-card {
        flex: 1 1 300px;
        max-width: 320px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
        display: block;
    }

    .event-card:hover {
        transform: scale(1.03);
    }

    .event-image {
        width: 100%;
        height: 300px;
        object-fit: cover;
    }

    .event-content {
        padding: 15px;
    }

    .event-title {
        font-size: 1.1rem;
        font-weight: 600;
        margin-bottom: 10px;
        color: #2b2b2b;
    }

    .event-date {
        font-size: 0.8rem;
        color: #888;
        margin-top: 8px;
    }

    .slider-buttons {
        margin-top: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 20px;
        flex-wrap: wrap;
    }

    .slider-buttons button {
        background-color: transparent;
        color: #16704C;
        border: 2px solid #16704C;
        padding: 10px 16px;
        border-radius: 30px;
        cursor: pointer;
        font-size: 1rem;
        display: flex;
        align-items: center;
        justify-content: center;
        transition: all 0.2s ease;
    }

    .slider-buttons button:hover {
        background-color: #16704C;
        color: white;

    }

    .slider-buttons .nav-icon-btn {
        padding: 10px;
        width: 42px;
        height: 42px;
        font-size: 1.2rem;
        border-radius: 50%;
        display: none;
    }

    /* Responsive slider style */
    @media (max-width: 768px) {
        .recent-events {
            position: relative;
            flex-wrap: nowrap;
            overflow: hidden;
        }

        .event-image {
            height: 400px;
        }

        .event-card {
            flex: 0 0 100%;
            max-width: 80%;
            display: none;
        }

        .event-card.active {
            display: block;
        }

        .nav-icon-btn {
            display: flex !important;
        }
    }
</style>

<div class="recent-events-section">
    <div class="recent-events-heading">Recent Events</div>

    <div class="recent-events" id="mobileSlider">
        <asp:Repeater ID="rptEvents" runat="server">
            <ItemTemplate>
                <div class="event-card">
                    <asp:Image runat="server" CssClass="event-image" ImageUrl='<%# Eval("Image") %>' AlternateText="Event Image" />
                    <div class="event-content">
                        <div class="event-title"><%# Eval("Title") %></div>
                        <div class="event-date"><%# Eval("Date", "{0:dd MMM yyyy}") %></div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <div class="slider-buttons">
        <!-- Prev Icon (only on small screens) -->
        <button type="button" class="nav-icon-btn" onclick="showPrevCard()">
            <i class="fas fa-chevron-left"></i>
        </button>

        <!-- Always Visible Center Button -->
        <button type="button">
            View All Events
        </button>

        <!-- Next Icon (only on small screens) -->
        <button type="button" class="nav-icon-btn" onclick="showNextCard()">
            <i class="fas fa-chevron-right"></i>
        </button>
    </div>
</div>

<script>
    let currentCardIndex = 0;

    function showCard(index) {
        const cards = document.querySelectorAll("#mobileSlider .event-card");
        if (cards.length === 0) return;

        cards.forEach((card, i) => {
            card.classList.remove("active");
            if (i === index) {
                card.classList.add("active");
            }
        });
    }

    function showNextCard() {
        const cards = document.querySelectorAll("#mobileSlider .event-card");
        currentCardIndex = (currentCardIndex + 1) % cards.length;
        showCard(currentCardIndex);
    }

    function showPrevCard() {
        const cards = document.querySelectorAll("#mobileSlider .event-card");
        currentCardIndex = (currentCardIndex - 1 + cards.length) % cards.length;
        showCard(currentCardIndex);
    }

    window.addEventListener("DOMContentLoaded", function () {
        showCard(currentCardIndex);
    });
</script>
