<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WelcomeSection.ascx.cs" Inherits="GemsAsc.Components.WelcomeSection" %>

<style>
    .welcome-section {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: center;
        padding: 60px 20px;
        background-color: #fff;
        font-family: 'Segoe UI', sans-serif;
    }

    .welcome-image {
        flex: 1 1 300px;
        max-width: 400px;
        padding: 10px;
        position: relative;
    }

    .welcome-image img {
        width: 100%;
        border-radius: 20px;
        object-fit: cover;
    }

    .welcome-image .name-badge {
        position: absolute;
        bottom: 20px;
        left: 20px;
        background-color: rgba(22, 112, 76, 0.8);
        color: white;
        padding: 4px 8px;
        border-radius: 8px;
        font-weight: 500;
    }

    .welcome-content {
        flex: 1 1 400px;
        max-width: 600px;
        padding: 10px 30px;
    }

    .welcome-content h1 {
        font-size: 40px;
        font-weight: bold;
        color: #222;
        margin-bottom: 20px;
    }

    .welcome-content p {
        font-size: 17px;
        line-height: 1.7;
        color: #444;
        margin-bottom: 25px;
    }

    .welcome-content a.read-more {
        color: #16704C;
        font-weight: 600;
        font-size: 16px;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
    }

    .welcome-content a.read-more i {
        margin-left: 8px;
        transition: transform 0.2s ease;
    }

    .welcome-content a.read-more:hover i {
        transform: translateX(4px);
    }

    @media (max-width: 768px) {
        .welcome-content {
            padding: 20px 10px;
            text-align: center;
        }

        .welcome-content h1 {
            font-size: 32px;
        }
    }
</style>

<div class="welcome-section">

    <div class="welcome-image">
        <img src="../Assets/Images/People/principal.png" alt="Principal Image" />
        <div class="name-badge">
            <p style="margin-bottom: 0px; font-size:20px;">Dr. Naveen Mohan</p>
            <p style="margin-bottom: 0px; font-size:14px;">Principal</p>
        </div>
    </div>

    <div class="welcome-content">
        <h1>Welcome to GEMS College!</h1>
        <p>
            A new era has dawned on the horizon of higher learning in our country. 
            New aspirations, new resolutions, new hopes and desires are yet to come. 
            Let’s cross over the borders of monotony and monopoly in the teaching learning 
            process and open the doors of higher education to those who are denied this great privilege. 
            This alone will lead our country to the heights of glory and fame. Every attempt made in this 
            direction should be fruitful and student friendly. Let us popularize the avenues of education to all.
        </p>
        <a class="read-more" href="<%= Page.GetRouteUrl("MessageRoute", null) %>">
            Read More <i class="fas fa-arrow-right"></i>
        </a>
    </div>
</div>
