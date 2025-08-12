<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QualityInitiatives.ascx.cs" Inherits="GemsAsc.Components.IQAC.QualityInitiatives" %>


<style>
    .title {
        color: #16704C;
        font-weight: bold;
    }

    .scroll-container {
        overflow: hidden;
        white-space: nowrap;
        position: relative;
        width: 100%;
        box-sizing: border-box;
    }

    .scroll-track {
        display: inline-flex;
        animation: scroll 20s linear infinite;
    }

    
    .scroll-track img {
        height: 230px;
        width: auto;
        margin-right: 20px;
        flex-shrink: 0;
    }

    
    @keyframes scroll {
        from {
            transform: translateX(0);
        }
        to {
            transform: translateX(-50%);
        }
    }
</style>

<div>
    <h4 class="title">Chairman’s Lecture Series</h4>
    <p style="font-size:18px;">
        The Chairman's Lecture Series at GEMS Arts and Science College stands as a beacon of intellectual enrichment and 
        professional development for the esteemed faculty. This distinguished program, hosting four thought-provoking 
        talks annually, is a testament to the institution's commitment to fostering a culture of continuous learning. 
        Designed under the visionary leadership of the college chairman, these lectures bring together accomplished speakers 
        from diverse fields, offering valuable insights and perspectives. The series serves as a platform for faculty members 
        to engage with cutting-edge ideas, innovative research, and contemporary issues, thereby enhancing their knowledge 
        and enriching their teaching methodologies. By facilitating a dynamic exchange of ideas, the Chairman's Lecture 
        Series not only contributes to the academic growth of the faculty but also cultivates an intellectually vibrant 
        community within GEMS Arts and Science College. This initiative underscores the college's dedication to nurturing a 
        stimulating academic environment that empowers faculty members to excel in their roles as educators and mentors.
    </p>
    
   <%-- <marquee behavior="scroll" direction="left" scrollamount="5" class="scroll-images">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        <img style="height:220px" src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
    </marquee>--%>

    <div class="scroll-container">
        <div class="scroll-track">
           <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
            <img src="../Assets/Images/IQAC/lecture.jpg" alt="Lecture 1">
        </div>
    </div>



    <h4 class="title" style="margin-top:30px;">Friday Seminar Series</h4>
    <p style="font-size:18px;">
        The Friday Seminar Series at GEMS Arts and Science College is a dynamic initiative tailored exclusively for the 
        faculty, embodying a commitment to continuous professional development. Held on the second and fourth Friday of 
        each month, this program is a collaborative effort by the faculties, for the faculties. Its primary goal is to 
        refine communication and presentation skills through engaging seminars and discussions. The series places a unique 
        emphasis on practical skill enhancement, as sessions are evaluated by an external panel member and a non-subject 
        expert. This constructive feedback contributes to faculty members' growth and effectiveness in the academic arena. 
        Notably, a highlight of the series is the recognition of the best faculty speaker every semester, underscoring the 
        college's dedication to acknowledging and celebrating excellence in pedagogical communication. The Friday Seminar 
        Series stands as a testament to GEMS Arts and Science College's commitment to fostering a community of educators 
        equipped with the essential skills for impactful and engaging teaching.
    </p>

    <h4 class="title" style="margin-top:30px;">Students Seminar series</h4>
    <p style="font-size:18px;">
        The Students Seminar Series at GEMS Arts and Science College stands as a vibrant platform, resonating with intellectual 
        curiosity and academic exploration. Conducted twice a month, this program is exclusively designed for students, fostering a 
        dynamic space for knowledge dissemination and exchange. The series encapsulates the ethos of the institution, providing a 
        forum for students to present their research, share innovative ideas, and engage in constructive dialogue. It serves as a 
        catalyst for intellectual growth, encouraging students to delve into diverse subjects and refine their presentation skills. 
        This bi-monthly event not only amplifies the academic experience but also cultivates a culture of peer learning and collaboration. 
        By facilitating student-led discussions, the Students Seminar Series at GEMS Arts and Science College empowers the next generation 
        of thinkers and communicators, promoting a community that values intellectual inquiry and innovation.
    </p>
    <p style="font-size:18px;">
        The Students Seminar Series at GEMS Arts and Science College stands as a beacon of academic enrichment, fostering a vibrant 
        intellectual community among the student body. Held twice a month, this program is a testament to the institution's commitment to 
        nurturing the research and presentation skills of its students. Dr. B G Unni, the Director of Academic and Research, takes the 
        lead in initiating this intellectually stimulating series, while Dr. Nayana P, Research Officer and Assistant Professor in the 
        PG Department of General Biotechnology, serves as the dedicated coordinator. These seminars provide students with a platform to 
        showcase their research, insights, and perspectives, encouraging a culture of scholarly discourse. As a collaborative effort between 
        faculty and students, the Students Seminar Series embodies the college's dedication to holistic education and the development of critical 
        thinking skills among its student community.
    </p>

</div>