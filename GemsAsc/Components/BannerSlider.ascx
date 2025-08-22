<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BannerSlider.ascx.cs" Inherits="GemsAsc.Components.BannerSlider" %>


<style>
    .slider-container {
        position: relative;
        overflow: hidden;
        width: 100%;
        height: 450px;
    }

    .slider-wrapper {
        display: flex;
        width: 100%;
        transition: transform 1s ease-in-out;
    }

    .slide {
        position: relative;
        width: 100%;
        height: 450px;
        flex-shrink: 0;
    }

    .slide img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .slide-caption {
      position: absolute;
      bottom: 20px;
      left: 30px;
      color: white;
      border-radius: 5px;
      background-color: rgba(22, 112, 76, 0.8);
      padding: 6px 10px;
      width: 70%;
    }

    .slide-caption h2 {
      font-size: clamp(0.9rem, 2vw, 1.2rem);
      margin-bottom: 0.5rem;
    }

    .slide-caption h5 {
      font-size: clamp(0.7rem, 1.5vw, 1rem);
      font-weight: 300;
    }

    .slider-btn {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        background-color: rgba(0, 0, 0, 0.5);
        border: none;
        color: #fff;
        padding: 10px 15px;
        cursor: pointer;
        z-index: 1;
    }

    @media (max-width: 768px) {
        .slider-container {
            height: 250px;
        }

        .slide {
            height: 250px;
        }

    }
</style>




<div class="slider-container">
    <div class="slider-wrapper" id="sliderWrapper">
        <div class="slide">
            <img src='<%= ResolveUrl("~/Assets/Images/Banner/homeimge2.webp") %>'  alt="Banner 1" />
            <div class="slide-caption">
                <h2>INNOVATIVE PROGRAMMES</h2>
                <h5>GEMS provides various innovative programmes for the students to enrich their Social Commitment & Professional Quality.</h5>
            </div>
        </div>
        <div class="slide">
            <img src='<%= ResolveUrl("~/Assets/Images/Banner/homeimge3.webp") %>' alt="Banner 3" />
            <div class="slide-caption">
                <h2>GEMS LIBRARY</h2>
                <h5>The Library has a collection of good number of books under different titles according to the student requirements with online public access & HighSpeed Internet Facility.</h5>
            </div>
        </div>
         <div class="slide caption-div">
             <img src='<%= ResolveUrl("~/Assets/Images/Banner/homeimge1.webp") %>' alt="Banner 2" />
         </div>
    </div>
</div>



<script>
    let currentIndex = 0;
    const sliderWrapper = document.getElementById('sliderWrapper');
    const slides = sliderWrapper.children;
    const totalSlides = slides.length;

    function updateSlide() {
        const offset = -currentIndex * 100;
        sliderWrapper.style.transform = `translateX(${offset}%)`;
    }

    function slideNext() {
        currentIndex = (currentIndex + 1) % totalSlides;
        updateSlide();
    }

    setInterval(() => {
        slideNext();
    }, 4000);
</script>