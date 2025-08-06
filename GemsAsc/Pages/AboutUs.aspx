<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="GemsAsc.Pages.AboutUs" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .about-heading {
            color: #16704C;
            font-size: clamp(1.8rem, 2vw, 2.5rem);
            font-weight: bold;
            text-align: center;
            margin-top: 40px;
        }

        .about-subheading {
            text-align: center;
            font-size: clamp(1.2rem, 2.5vw, 1.5rem);
            font-weight: 500;
            margin: 20px 10px;
            color: #001c74;
        }

        .about-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.5);
            overflow: hidden;
            max-width: 900px;
            margin: 40px auto;
        }

        .about-card img {
            width: 100%;
            display: block;
            object-fit: cover;
        }

        .about-card p {
            padding: 20px;
            font-size: clamp(1rem, 2vw, 1.1rem);
            color: #333;
            text-align: justify;
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px 20px;
            max-width: 1200px;
            margin: auto;
        }

        .info-card {
            background: #16704C;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.5);
            padding: 25px 20px;
            text-align: center;
            color: white;
        }

        .info-card .section-title {
            font-size: clamp(1.4rem, 2.5vw, 1.8rem);
            margin-bottom: 15px;
        }

        .info-card .section-content {
            font-size: clamp(1rem, 2vw, 1.1rem);
        }
    </style>


    <div class="container">

        <!-- Main Heading -->
        <div class="about-heading">About College</div>

        <!-- Sub Heading -->
        <div class="about-subheading">
            GEMS Provides "Quality EDUCATION & Excellent Training for a DREAM CAREER".
        </div>

        <div class="about-card">
            <img src="../Assets/Images/Banner/homeImge2.webp" alt="About College" />
            <p>
                Gems Arts & Science College (Registration No :KL/2019/0242803 ( NGO –Darpan) NITI Aayog, Government of India, 
                NDLI Club under National Digital Library of India) is the pioneer institution in the Co-operative sector run by 
                Global Education and Management Studies (GEMS) Co-operative Ltd No. M.782. The college is affiliated to the 
                University of Calicut and recognized by the Government of Kerala. It is situated about 1 km away from Ramapuram 
                town on the Kozhikode-Palakkad Highway (NH.966). The college is accessible to students from all places. Now the 
                college is having 14 Under Graduate (UG) programmes & 6 Post Graduate (PG) programmes. The campus is spread over 
                10 acres surrounded by hillocks and lush green paddy fields. The serene atmosphere and sylvan surroundings provide 
                the college the most ideal environment for learning.
            </p>
        </div>

        <!-- Vision, Mission, Core Values Cards -->
        <div class="info-grid">
            <div class="info-card">
                <div class="section-title">Our Vision</div>
                <div class="section-content">
                    To become a premier institution recognized for its excellence in academic, intellectual activities and for its valuable contributions to students and society.
                </div>
            </div>
            <div class="info-card">
                <div class="section-title">Our Mission</div>
                <div class="section-content">
                    To make GEMS better and better in terms of excellence in education and service to society. To impart state-of-the-art knowledge to students and to inculcate 
                    in them a high degree of social consciousness and human values and thereby enable them to face the challenges of life with courage and conviction.
                </div>
            </div>
            <div class="info-card">
                <div class="section-title">Our Core Values</div>
                <div class="section-content">
                    Academic Excellence, Integrity, Diversity and Inclusion, Respect, Quality
                </div>
            </div>
        </div>

    </div>
</asp:Content>
