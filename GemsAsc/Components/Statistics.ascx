<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Statistics.ascx.cs" Inherits="GemsAsc.Components.Statistics" %>

<style>
    .main-div {
        display:flex;
        justify-content:center;
    }

    .counter-box {
        padding: 30px;
        background: white;
        border-radius: 16px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        text-align: center;
        transition: transform 0.3s ease;
        height: 100%;
        display:flex;
        justify-content:center;
        align-content: center;
    }

    .counter-box-child{
        display:flex;
        flex-direction:column;
        align-items:start;
        margin-left:20px;
    }

    .counter-box i {
        font-size: 60px;
        color: #A62846;
        text-align:center;
        padding-top:10px;
    }

    .counter-box h3 {
        font-size: 32px;
        font-weight: bold;
        color: #A62846;
    }

    .counter-box p {
        font-size: 18px;
        font-weight:400;
        color: black;
    }

    .counter-container {
        padding: 30px 0px;
    }

    /* ✅ Responsive Styling */
    @media (max-width: 768px) {
        .counter-box {
            padding: 20px;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .counter-box i {
            font-size: 40px;
            padding-top: 0;
            margin-bottom: 10px;
        }

        .counter-box-child {
            margin-left: 0;
            align-items: center;
        }

        .counter-box h3 {
            font-size: 24px;
        }

        .counter-box p {
            font-size: 16px;
        }
    }
</style>

<div class="container-fluid counter-container" style="background-color:rgba(22, 112, 76, 0.1);" >
    <div class="container ">
        <div class="row g-4 main-div">
            <div class="row g-4">
                <div class="col-6 col-lg-4">
                    <div class="counter-box">
                        <i class="fa-solid fa-book-open"></i>
                        <div class="counter-box-child">
                            <h3 class="counter" data-target="15">0</h3>
                            <p>Programmes</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-4">
                    <div class="counter-box">
                        <i class="fas fa-user-graduate"></i>
                        <div class="counter-box-child">
                            <h3 class="counter" data-target="2000">0</h3>
                            <p>Students</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-4">
                    <div class="counter-box">
                        <i class="fa-solid fa-person-chalkboard"></i>
                        <div class="counter-box-child">
                            <h3 class="counter" data-target="100">0</h3>
                            <p>Faculties</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-4">
                    <div class="counter-box">
                        <i class="fa-solid fa-graduation-cap"></i>
                        <div class="counter-box-child">
                            <h3 class="counter" data-target="35000">0</h3>
                            <p>Alumni</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-4">
                    <div class="counter-box">
                        <i class="fas fa-globe"></i>
                        <div class="counter-box-child">
                            <h3 class="counter" data-target="3">0</h3>
                            <p>Nationalities</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-4">
                    <div class="counter-box">
                        <i class="fas fa-award"></i>
                        <div class="counter-box-child">
                            <h3 class="counter" data-target="16">0</h3>
                            <p>Years Legacy</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<script>
    $(document).ready(function () {
        $('.counter').each(function () {
            var $this = $(this),
                target = +$this.data('target'),
                count = 0,
                increment = Math.ceil(target / 100),
                duration = 2000,
                stepTime = Math.floor(duration / (target / increment));

            var counterInterval = setInterval(function () {
                count += increment;
                if (count >= target) {
                    count = target;
                    clearInterval(counterInterval);
                }
                $this.text(count.toLocaleString() + "+");
            }, stepTime);
        });
    });
</script>