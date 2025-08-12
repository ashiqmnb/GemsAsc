<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="GemsAsc.Components.Footer" %>

<style>
    .footer {
        background-color: #003321;
        color: white;
        padding: 30px 50px;
        font-family: 'Segoe UI', sans-serif;
    }

    .footer a {
        color: white;
        text-decoration: none;
    }

    .footer a:hover {
        text-decoration: underline;
    }

    .footer-logo {
        max-width: 150px;
        margin-bottom: 15px;
    }

    .footer h5 {
        font-weight: bold;
        margin-bottom: 15px;
    }

    .footer ul {
        list-style: none;
        padding: 0;
    }

    .footer ul li {
        margin-bottom: 8px;
    }

    .footer .social-icons i {
        font-size: 20px;
        margin-right: 15px;
        color: white;
    }

    .footer-bottom {
        border-top: 1px solid rgba(255, 255, 255, 0.2);
        margin-top: 30px;
        padding-top: 15px;
        text-align: center;
        font-size: 14px;
    }

    @media (max-width: 768px) {
        .footer .row {
            text-align: center;
        }
    }
</style>

<div class="footer">
    <div class="container-fluid">
        <div class="row">
            <!-- Left Column -->
            <div class="col-md-4 mb-4">
                <img src="../Assets/Images/Logo/gemslogo.png" alt="College Logo" class="footer-logo" />
                <p style="font-size: 24px;">
                    <strong>Global Education And Management Studies (GEMS) Co-Operative Ltd.</strong>
                </p>
                <p style="font-size: 14px;">
                    REGISTRATION NO: KL/2019/0242803 (NGO – DARPAN) NITI AAYOG, GOVERNMENT OF INDIA
                </p>
                <div class="social-icons mt-3">
                    <p style="font-size: 24px; font-weight: 600">Follow Us</p>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>

            <!-- Center Column -->
            <div class="col-md-4 mb-4">
                <h5>Quick Links</h5>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">All Departments</a></li>
                    <li><a href="#">Academic Calendar</a></li>
                    <li><a href="#">Programmes</a></li>
                    <li><a href="#">IQAC</a></li>
                    <li><a href="#">Photo Gallery</a></li>
                    <li><a href="#">Clubs</a></li>
                    <li><a href="#">Events</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>

            <!-- Right Column -->
            <div class="col-md-4 mb-4">
                <h5>Contact Us</h5>
                <p>GEMS, Kadungapuram P.O, Ramapuram, Malappuram</p>
                <p><i class="fas fa-phone-alt"></i> 04933 256XXX</p>
                <p><i class="fas fa-envelope"></i> gemsasc@gmail.com</p>
                <p><i class="fas fa-envelope"></i> principal@gemscollege.ac.in</p>
            </div>
        </div>

        <div class="footer-bottom">
            &copy;2025 All Rights Reserved | Powered By Em.Mincetech
        </div>
    </div>
</div>
