<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="GemsAsc.Pages.Message" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        .message-section {
            padding: 30px 15px;
            max-width: 1000px;
            margin: auto;
        }

        .message-card {
            display: flex;
            align-items: flex-start;
            align-items: center;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            overflow: hidden;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }

        .message-card.reverse {
            flex-direction: row-reverse;
        }

        .message-image {
            flex: 1 1 200px;
            min-width: 180px;
            max-width: 220px;
            padding: 10px;
        }

        .message-image img {
            width: 100%;
            height: auto;
            display: block;
            object-fit: cover;
            border-radius: 10px;
        }

        .message-text {
            flex: 2;
            padding: 20px;
        }

        .message-text p {
            font-size: 0.95rem;
            color: #2e3c3f;
            line-height: 1.6;
            margin-bottom: 16px;
        }

        .message-author {
            font-weight: 600;
            color: #16704C;
            font-size: 1rem;
        }

        .message-role {
            font-size: 0.85rem;
            color: #777;
        }

        @media (max-width: 768px) {
            .message-card,
            .message-card.reverse {
                flex-direction: column;
            }

            .message-image,
            .message-text {
                width: 70%;
                max-width: 100%;
            }

            .message-text {
                padding: 15px;
            }
        }
    </style>

    <div class="message-section">

        
        <div class="message-card">
            <div class="message-image">
                <img src="../Assets/Images/People/chairman.jpg" alt="chairman" />
            </div>
            <div class="message-text">
                <p>
                    The global education & management studies co-op.ltd. (gems) no.782,po. Ramapuram is formed under the co- operative societies act 
                    with the objective of eliminating the educational backwardness of malappuram district in general and mankada assembly constituency in 
                    particular by providing quality higher education affordable. It is an endeavour of the society to provide world class higher education 
                    in the emerging new generation areas by making use of the advanced technologies and strategies in education to equip the students to face 
                    the challenges in life and to prepare them for the highly competitive job market. Gems arts and science college, the first institution under 
                    gems started in the academic year 2008-09, has now grown into an outstanding institution with 14 under graduate (ug) programmes & 4 post graduate (pg) 
                    programmes with superb infrastructural facilities.
                </p>
                <div class="message-author">MR. MANJALAMKUZHI ALI</div>
                <div class="message-role">CHAIRMAN</div>
            </div>
        </div>

        <div class="message-card reverse">
            <div class="message-image">
                <img src="../Assets/Images/People/directory.jpg" alt="directory" />
            </div>
            <div class="message-text">
                <p>
                    GEMS Arts and Science College, the first institution under GEMS Started functioning from the session 2008-2009 with 14 UG, 
                    5 PG courses with excellent infrastructural facilities in all departments, became one of the best self financed college affiliated to 
                    Calicut University. The campus is set in a beautiful landscape with a spectacular view. My interaction with faculties and students after 
                    joining as Director Academic & Research is excellent and has got very good opinion about the quality of faculties and students . 
                    The management of the college is providing the best support for bringing the status of the college at a very high level.
                    My main intention of becoming a member of the college is to bring the college’s position in both academic and research front, 
                    and to be known as one of the best institution under Calicut university.
                </p>
                <div class="message-author">DR.B.G.UNNI</div>
                <div class="message-role">ACADEMIC & RESEARCH DIRECTOR</div>
            </div>
        </div>

        <div class="message-card">
            <div class="message-image">
                <img src="../Assets/Images/People/principal.png" alt="principal" />
            </div>
            <div class="message-text">
                <p>
                    A new era has dawned on the horizon of higher learning in our country. New aspirations, new resolutions, new hopes and desires are yet to come. 
                    Let’s cross over the borders of monotony and monopoly in the teaching learning process and open the doors of higher education to those who are 
                    denied this great privilege. This alone will lead our country to the heights of glory and fame. Every attempt made in this direction should be 
                    fruitful and student friendly. Let us popularize the avenues of education to all.
                </p>
                <div class="message-author"> DR. NAVEEN MOHAN</div> 
                <div class="message-role">PRINCIPAL</div>
            </div>
        </div>

    </div>
</asp:Content>
