﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="GemsAsc.Components.Navbar" %>


<style>
    .collage-name {
       font-family: 'Inter', Gadget, sans-serif;
       color: #001c74;
     }
    .blink {
      animation: blinker 2s linear infinite;
    }

    @keyframes blinker {
      50% {
        color: #16704C;
        background-color: white;
      }
    }
    
    /* Sticky bottom navbar */
    .sticky-navbar {
        position: sticky;
        top: 0;
        z-index: 1040;
    }
    
    /* Hide top part in small screen */
    @media (max-width: 992px) {
      .top-navbar {
        display: none !important;
      }
    
      .navbar {
        background-color: white !important;
      }
    
      .navbar-nav .nav-link {
        color: #16704C !important;
      }
    
      #menuToggle {
        color: #16704C !important;
      }
    
      .navbar-brand img {
        filter: grayscale(100%);
      }
    }
    
    @media (min-width: 992px) {
      #sideMenu {
        display: none !important;
      }
    }
</style>


<!-- Top Navbar -->
<div class="top-navbar bg-white border-bottom px-3 py-2 d-flex align-items-center justify-content-center flex-wrap gap-4">
  <div class="d-flex align-items-center">
    <img src="../Assets/Images/Logo/gemslogo.png" alt="Gems Logo" height="100" class="me-3" />
    <div class="d-flex flex-column align-items-center collage-name">
      <h5 class="mb-0 fw-bold">GEMS ARTS AND SCIENCE COLLEGE</h5>
      <small class="text-muted fw-semibold">(AUTONOMOUS)</small>
    </div>
  </div>

  <div class="d-flex align-items-center gap-4">
    <button class="btn fw-bold blink me-3 text-white" style="background-color: #16704C;">Admission 2025-26</button>
    <img src="../Assets/Images/Logo/naac.png" alt="Naac Logo" width="80" class="me-2" />
    <img src="../Assets/Images/Logo/aicte.png" alt="Aicte Logo" width="80" class="me-2" />
    <img src="../Assets/Images/Logo/ugc.png" alt="Ugc Logo" width="80" />
  </div>
</div>

<!-- Bottom Navbar -->
<nav class="navbar navbar-expand-lg sticky-navbar" style="background-color: #16704C; height: 65px;">

  <div class="container-fluid px-3">

      <a class="d-lg-none">
          <img src="../Assets/Images/Logo/gemslogo.png" alt="College Logo" width="50" height="50" class="me-3" />
      </a> 

      <div class="d-lg-none d-flex flex-column align-items-center collage-name">
        <h5 class="mb-0 fw-bold fs-6">GEMS ARTS AND SCIENCE COLLEGE</h5>
        <small class="text-muted fw-semibold">(AUTONOMOUS)</small>
       </div>

      <div class="navbar-toggler text-white" id="menuToggle" role="button" tabindex="0">
        <i class="bi bi-list fs-1"></i> 
      </div>

    <div class="collapse navbar-collapse d-none d-lg-flex">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-around text-white">
        <li class="nav-item"><a class="nav-link text-white" runat="server" href="~/">Home</a></li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" id="aboutDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            About
          </a>
          <ul class="dropdown-menu" aria-labelledby="aboutDropdown">
            <li><a class="dropdown-item" href="#">About College</a></li>
            <li><a class="dropdown-item" href="#">Message</a></li>
            <li><a class="dropdown-item" href="#">Board of Directors</a></li>
            <li><a class="dropdown-item" href="#">Code of Conduct</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" id="deptDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Departments</a>
          <ul class="dropdown-menu" aria-labelledby="deptDropdown">
            <li><a class="dropdown-item" href="#">Computer Science</a></li>
            <li><a class="dropdown-item" href="#">Computer Applications</a></li>
            <li><a class="dropdown-item" href="#">Biotechnology</a></li>
            <li><a class="dropdown-item" href="#">Microbiology</a></li>
            <li><a class="dropdown-item" href="#">Geology</a></li>
            <li><a class="dropdown-item" href="#">Management Studies</a></li>
            <li><a class="dropdown-item" href="#">Commerce</a></li>
            <li><a class="dropdown-item" href="#">English</a></li>
            <li><a class="dropdown-item" href="#">Languages</a></li>
            <li><a class="dropdown-item" href="#">Physical Education</a></li>
            <li><a class="dropdown-item" href="#"></a></li>
            <li><a class="dropdown-item" href="#">Sociology</a></li>
            <li><a class="dropdown-item" href="#">Computer Science</a></li>
            <li><a class="dropdown-item" href="#">MultiMedia</a></li>
            <li><a class="dropdown-item" href="#">Social Work</a></li>
            <li><a class="dropdown-item" href="#">Travel & Tourism</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" id="academicsDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Academics</a>
          <ul class="dropdown-menu" aria-labelledby="academicsDropdown">
            <li><a class="dropdown-item" href="#">Academic Calendar</a></li>
            <li><a class="dropdown-item" href="#">Programmes</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" id="facilitiesDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Facilities</a>
          <ul class="dropdown-menu" aria-labelledby="facilitiesDropdown">
            <li><a class="dropdown-item" href="#">Experiential Learning Cernters</a></li>
            <li><a class="dropdown-item" href="#">Sports</a></li>
            <li><a class="dropdown-item" href="#">Amenities</a></li>
          </ul>
        </li>

        <li class="nav-item"><a class="nav-link text-white" href="#">IQAC</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="#">Gallery</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="#">Placement Cell</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="#">Events</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="#">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Sidebar for Small Screens -->
<div id="sideMenu" class="bg-white position-fixed top-0 end-0 vh-100 shadow p-4"
     style="width: 250px; transform: translateX(100%); transition: transform 0.3s ease-in-out; z-index: 1050;">
  <button class="btn-close float-end mb-3" id="closeMenu"></button>

  <ul class="nav flex-column">
    <li class="nav-item"><a class="nav-link text-dark" href="#">Home</a></li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle text-dark" href="#" id="about2Dropdown" data-bs-toggle="dropdown" aria-expanded="false">About</a>
      <ul class="dropdown-menu" aria-labelledby="about2Dropdown">
        <li><a class="dropdown-item" href="#">Aboout College</a></li>
        <li><a class="dropdown-item" href="#">Message</a></li>
        <li><a class="dropdown-item" href="#">Board of Directors</a></li>
        <li><a class="dropdown-item" href="#">Code of Conduct</a></li>
      </ul>
    </li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle text-dark" id="dept2Dropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">Departments</a>
      <ul class="dropdown-menu" aria-labelledby="dept2Dropdown">
        <li><a class="dropdown-item" href="#">Computer Science</a></li>
        <li><a class="dropdown-item" href="#">Computer Applications</a></li>
        <li><a class="dropdown-item" href="#">Biotechnology</a></li>
        <li><a class="dropdown-item" href="#">Microbiology</a></li>
        <li><a class="dropdown-item" href="#">Geology</a></li>
        <li><a class="dropdown-item" href="#">Management Studies</a></li>
        <li><a class="dropdown-item" href="#">Commerce</a></li>
        <li><a class="dropdown-item" href="#">English</a></li>
        <li><a class="dropdown-item" href="#">Languages</a></li>
        <li><a class="dropdown-item" href="#">Physical Education</a></li>
        <li><a class="dropdown-item" href="#"></a></li>
        <li><a class="dropdown-item" href="#">Sociology</a></li>
        <li><a class="dropdown-item" href="#">Computer Science</a></li>
        <li><a class="dropdown-item" href="#">MultiMedia</a></li>
        <li><a class="dropdown-item" href="#">Social Work</a></li>
        <li><a class="dropdown-item" href="#">Travel & Tourism</a></li>
      </ul>
    </li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle text-dark" id="academics2Dropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">Academics</a>
      <ul class="dropdown-menu" aria-labelledby="academics2Dropdown">
        <li><a class="dropdown-item" href="#">Academic Calendar</a></li>
        <li><a class="dropdown-item" href="#">Programmes</a></li>
      </ul>
    </li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle text-dark" id="facilities2Dropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">Facilities</a>
      <ul class="dropdown-menu" aria-labelledby="facilities2Dropdown">
        <li><a class="dropdown-item" href="#">Experiential Learning Cernters</a></li>
        <li><a class="dropdown-item" href="#">Sports</a></li>
        <li><a class="dropdown-item" href="#">Amenities</a></li>
      </ul>
    </li>

    <li class="nav-item"><a class="nav-link " style="color: #16704C;" href="#">IQAC</a></li>
    <li class="nav-item"><a class="nav-link text-dark" href="#">Gallery</a></li>
    <li class="nav-item"><a class="nav-link text-dark" href="#">Placement Cell</a></li>
    <li class="nav-item"><a class="nav-link text-dark" href="#">Events</a></li>
    <li class="nav-item"><a class="nav-link text-dark" href="#">Contact</a></li>
  </ul>     
</div>


<script>

    const menuToggle = document.getElementById("menuToggle");
    const sideMenu = document.getElementById("sideMenu");
    const closeMenu = document.getElementById("closeMenu");

    menuToggle?.addEventListener("click", () => {
        sideMenu.style.transform = "translateX(0%)";
    });

    closeMenu?.addEventListener("click", () => {
        sideMenu.style.transform = "translateX(100%)";
    });
</script>