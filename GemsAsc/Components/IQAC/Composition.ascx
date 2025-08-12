<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Composition.ascx.cs" Inherits="GemsAsc.Components.IQAC.Composition" %>

<style>
    .title {
        color: #16704C;
        font:bold;
    }

    .top-card {
        width: 180px;
        height: 260px;
    }

    .top-card img {
        height: 80%;
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
        margin-top: 4px;
        margin-bottom: 4px;
        font-size: 14px;
    }

    .card-base p {
        font-size: 12px;
    }

    .category-title {
        background-color: #f5f5f5;
        padding: 7px;
        border-left: 3px solid #16704C;
        border-bottom: 3px solid #16704C;
        border-radius: 0 0 0 12px;
        font-size: 14px;
        font-weight: bold;
        display: block;
        width: 100%;
    }

    .teachers-section img {
        height: 75% !important;
    }
</style>

<div class=" d-flex flex-column align-items-center">
    <h4 class="title">Composition of IQAC</h4>

    <%--Chairperson and director--%>
    <div  class="d-flex justify-content-start gap-5 mt-4">
        <div>
            <h5 class="category-title">Chairperson</h5>
             <div class="card-base top-card">
                 <img src="../Assets/Images/People/principal.png" alt="Principal" />
                 <h5>Dr. Naveen Mohan</h5>
                 <p>Principal</p>
             </div>
        </div>
        <div>
            <h5 class="category-title">Director</h5>
             <div class="card-base top-card">
                 <img src="../Assets/Images/IQAC/finose.jpeg" alt="IQAC Director" />
                 <h5>Dr. Finose A</h5>
                 <p>IQAC Director</p>
             </div>
        </div>
    </div>

    <%--Assistant Coordinator--%>

    <div class="d-flex justify-content-start gap-5 mt-4">
        <div>
            <h5 class="category-title">Assistant Coordinator</h5>
             <div class="card-base top-card">
                 <img src="../Assets/Images/IQAC/amrtha.jpeg" alt="Assistant Coordinator" />
                 <h5>Amrita S</h5>
                 <p>IQAC Assistant Coordinator</p>
             </div>
        </div>
        <div>
            <h5 class="category-title">Sr Administrative Officers</h5>
             <div class="card-base top-card">
                 <img src="../Assets/Images/IQAC/shahulhameed.jpg" alt="IQAC Director" />
                 <h5>Shahul Hameed</h5>
                 <p>Superintendent</p>
             </div>
        </div>
    </div>

    <%--Managemnet memnbers--%>
    <div class="mt-4">
        <h5 class="category-title">Management Members</h5>
        <div  class="d-flex justify-content-start gap-5 ">
            <div>
                 <div class="card-base top-card">
                     <img src="../Assets/Images/Directors/vicechairman.jpg" alt="Principal" />
                     <h5>Mr. Vasudevan</h5>
                     <p>Vice Chairman</p>
                 </div>
            </div>
            <div>
                 <div class="card-base top-card">
                     <img src="../Assets/Images/Directors/pthamsadirector.png" alt="Principal" />
                     <h5>Mr. P T Hamsa</h5>
                     <p>Director</p>
                 </div>
            </div>
        </div>
    </div>


    <%--Teachers--%>

    <div class="mt-4">
        <h5 class="category-title">Teacher Members</h5>

        <%--<div class="d-flex flex-wrap justify-content-center gap-5">
            <asp:Repeater ID="rptTeachers" runat="server">
                <ItemTemplate>
                    <div class="card-base top-card">
                        <img src='<%# ResolveUrl(Convert.ToString(Eval("ImageUrl"))) %>' alt='<%# Eval("Name") %>' />
                        <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt='<%# Eval("Name") %>' />
                        <h5><%# Eval("Name") %></h5>
                        <p><%# Eval("Position") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>--%>

        <div class="d-flex flex-wrap justify-content-center gap-5 teachers-section">

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/rahman.png") %>' alt="Abdul Rahman" />
                <h5>Abdul Rahman</h5>
                <p>Assistant Professor , HOD(Geology)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/sandeepan.png") %>' alt="Sandeepan KM" />
                <h5>Sandeepan KM</h5>
                <p>Assistant Professor , HOD(Management Studies)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/resna.png") %>' alt="Resna NK" />
                <h5>Resna NK</h5>
                <p>Assistant Professor , HOD(Microbiology)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/sivakumar.jpg") %>' alt="Sivakumar K" />
                <h5>Sivakumar K</h5>
                <p>Assistant Professor , HOD(Microbiology)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/Faculties/snadhya.jpg") %>' alt="Dr. Sandhya Balakrishnan PK" />
                <h5>Dr. Sandhya Balakrishnan</h5>
                <p>Assistant Professor , HOD(Computer Applications)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/arathy.jpg") %>' alt="Arathi P Rajan" />
                <h5>Arathi P Rajan</h5>
                <p>Assistant Professor , HOD(Travel & Tourism)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/ranjusha.jpg") %>' alt="Ranjusha" />
                <h5>Ranjusha</h5>
                <p>Assistant Professor , HOD(Biotechnology)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/anoos.png") %>' alt="Anoos Babu" />
                <h5>Anoos Babu</h5>
                <p>Assistant Professor , HOD(Computer Science)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/afroza.jpeg") %>' alt="Sulthana Afroza PP" />
                <h5>Sulthana Afroza PP</h5>
                <p>Assistant Professor , HOD(English)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/seethal.jpeg") %>' alt="Seethal P" />
                <h5>Seethal P</h5>
                <p>Assistant Professor , HOD(Languages)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/jayashree.png") %>' alt="Jayashree" />
                <h5>Jayashree</h5>
                <p>Assistant Professor , HOD(Mathematics)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/binshad.jpeg") %>' alt="Muhammed Binshad" />
                <h5>Muhammed Binshad</h5>
                <p>Assistant Professor , HOD(Multimedia)</p>
            </div>

            <div class="card-base top-card">
                <img src='<%= ResolveUrl("~/Assets/Images/IQAC/anitha.jpeg") %>' alt="Anitha Parveen" />
                <h5>Anitha Parveen</h5>
                <p>Assistant Professor , HOD(Social Work)</p>
            </div>

        </div>

    </div>

</div>