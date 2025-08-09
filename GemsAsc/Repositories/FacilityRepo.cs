using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class Facility
    {
        public string Name { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
    }
    public class FacilityRepo
    {
        public List<Facility> Learnings = new List<Facility>
        {
            new Facility
            {
                Name = "Computer Lab",
                Title = "Computer Lab",
                Description = "Fully fledged Air conditioned twin labs with fully networked and internet enabled systems. Working on Linux Based plat form, High quality projection system with sound.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/cslab.jpg"
            },
            new Facility
            {
                Name = "Biotechnology Lab",
                Title = "Biotechnology Lab",
                Description = "Biotechnology has smooth functioning laboratory with cooling centrifuge shaker, incubator, LAF, UV transilluminator, hot air oven, water bath, Magnetic stirrer etc which are made available for the students all time.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/ugbiotechlab.jpg"
            },
            new Facility
            {
                Name = "Audio Recording Studio",
                Title = "Multimedia Audio Dubbing & Recording Studio",
                Description = "Department of Multimedia upgraded Audio recording studio with latest recording equipments and MAC software’s. The Professionally designed and air conditioned acoustic Recording Studio offers the ability to record multi-channel, high quality audio, Music albums, Sound dubbing for documentary and feature film etc. Application use includes recording audio for vocal and speech work, instrument recording, academic course work, assignments, interviews, Radio programmes, multimedia projects and more. Department's equipment resources, creative and software tools can help to provide new opportunities for various field of audio production and profession for the students.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/audiolab.jpg"
            },
            new Facility
            {
                Name = "Electronic Lab",
                Title = "Electronic Lab",
                Description = "Research plays an dominant role in the educational system and provides practical knowledge for future employment of students. This lab is arranged with the aim to uplift, inspire students to take up research projects established on innovative ideas. We provides a platform for students to participate in blistering research with faculty. Digital electronics, embedded system, communication systems etc are the key lab equipment systems provided by GEMS technical team.Knowledge on innovative systems with advanced technologies are supported intensively by the college which results in successful academic projects.Electronics department ensures smart kind of updates which will be realistic if the research/development becomes successful.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/electronicslab.jpg"
            },
            new Facility
            {
                Name = "Multimedia Lab with Studio",
                Title = "Multimedia E-Content Development Centre",
                Description = "Personalized cubicle for individual student, fully air conditioned and Networked, Mac System with FCP software, Video Cams with GIB, DSLR Cams, Handy Cams, Well built studio for dubbing, shooting floor for video/photography, projection system professional/Audio studio for recording and editing.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/multimedialab.jpg"
            },
            new Facility
            {
                Name = "Microbiology Lab",
                Title = "Microbiology Lab",
                Description = "Fully equipped microbiology and biochemistry lab is the main work horse of the Department. Laboratory is equipped with Binocular Microscopes, inverted microscopes, PCR machine, Safety cabinets, Auto claves, incubators, Electro phoretic apparatus and many more.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/ugmicrolab.jpeg"
            },
            new Facility
            {
                Name = "Central Instrumentation Lab",
                Title = "Central Instrumentation Lab",
                Description = "Common Instrumentation Lab is a well equipped laboratory with all the sophisticated facilities for both biotechnology and microbiology students. There are various instruments particularly for the research purposes, and it includes PCR Thermo Cycler for DNA amplification, UV Transilluminator for viewing DNA bands, Cooling Centrifuge for DNA isolation. Shaking Incubator for incubation of various microorganisms, Inverted Microscope for animal cell culture, Spectrophotometer, Large Incubator etc.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/centrallab.jpeg"
            },
            new Facility
            {
                Name = "Geology Lab",
                Title = "Geology Lab",
                Description = "Provides hands-on training in Physical Geology, including rock and mineral identification, map and satellite image analysis, and specialized practicals. Equipped with advanced labs such as Geo Informatics Lab (20 high-end computers for Geoinformatics and Remote Sensing), Petrology Lab (polarizing and trinocular microscopes with display facilities), Micro Palaeontology & Sedimentology Lab (microscopes, sediment analysis tools), and Geo-Chemical Lab (rock, mineral, water analysis, and geophysical prospecting equipment).",
                ImageUrl = "~/Assets/Images/Facilities/Learning/geolab.jpeg"
            },
            new Facility
            {
                Name = "Geology Museum",
                Title = "Geology Museum",
                Description = "Showcases an extensive collection of rocks, minerals, ores, and fossils, offering a visual and educational complement to lab studies. Provides real-world geological specimens for enhancing understanding of Earth sciences.",
                ImageUrl = "~/Assets/Images/Facilities/Learning/geomuseum.jpg"
            }
        };


        public List<Facility> Sports = new List<Facility>
        {
            new Facility
            {
                Name = "Sports Ground",
                Title = "Sports Ground",
                Description = "GEMS College boasts a sprawling and state-of-the-art sports ground that serves as the heart of our campus. This meticulously designed facility offers a haven for students to engage in various sporting activities, promoting physical fitness, teamwork, and a well-rounded educational experience. Our sports ground provides ample space for a wide range of sports, from cricket and football to athletics and more. It's not merely a patch of land but a hub of energy, where students come together to pursue their athletic passions and build lasting friendships.",
                ImageUrl = "~/Assets/Images/Facilities/Sports/ground.jpeg"
            },
            new Facility
            {
                Name = "Football",
                Title = "Football",
                Description = "GEMS College is proud to offer a dynamic football program that forms an integral part of our commitment to holistic education. Our football program is designed to inspire and develop young athletes, cultivating not only their skills on the field but also their character, discipline, and teamwork off it.\r\n\r\nAt GEMS College, we believe that football is more than just a sports. it's a platform for personal growth and camaraderie. Our experienced coaching staff is dedicated to nurturing talent, instilling sportsmanship values, and providing rigorous training to our aspiring footballers.",
                ImageUrl = "~/Assets/Images/Facilities/Sports/football.jpeg"
            },
            new Facility
            {
                Name = "Volleyball",
                Title = "Volleyball",
                Description = "GEMS College takes great pride in offering a vibrant volleyball program that adds a spirited dimension to our educational experience. Our volleyball program is designed to foster a love for the sport while nurturing essential life skills such as teamwork, communication, and leadership. At GEMS College, we view volleyball as more than just a game played on the court; it's an opportunity for personal growth and camaraderie among our students. Our dedicated coaching staff is committed to honing skills, nurturing talent, and instilling a strong sense of sportsmanship in our young athletes.",
                ImageUrl = "~/Assets/Images/Facilities/Sports/vollyball.jpeg"
            },
            new Facility
            {
                Name = "Cricket",
                Title = "Cricket",
                Description = "GEMS College takes great pride in offering an engaging cricket program that plays a pivotal role in our holistic educational experience. Our cricket program is designed to cultivate not only cricketing talent but also essential life skills such as discipline, teamwork, and perseverance. At GEMS College, we believe that cricket transcends the boundaries of a sport; it's a platform for character development and camaraderie. Our experienced coaching staff is dedicated to nurturing young cricketers, honing their skills, and instilling the values of sportsmanship and fair play.",
                ImageUrl = "~/Assets/Images/Facilities/Sports/cricket.jpeg"
            },
            new Facility
            {
                Name = "Badminton",
                Title = "Badminton",
                Description = "GEMS College offers a dynamic badminton program that enhances the overall educational experience for our students. Our badminton program is designed to foster a love for the sport while instilling values of discipline, perseverance, and sportsmanship. At GEMS College, we view badminton as more than just a recreational activity; it's an avenue for personal growth and building strong bonds among our students. Our dedicated coaching staff is committed to nurturing talent, refining skills, and emphasizing fair play.",
                ImageUrl = "~/Assets/Images/Facilities/Sports/badminton.jpeg"
            },
            new Facility
            {
                Name = "Basketball",
                Title = "Basketball",
                Description = "GEMS College takes great pride in offering an exciting and competitive basketball program that enriches the educational experience for our students. Our basketball program is designed to inspire a deep passion for the sport while instilling values of teamwork, determination, and sportsmanship. At GEMS College, we see basketball as more than just a game; it's a platform for personal growth and the forging of strong bonds among our students. Our dedicated coaching staff is committed to nurturing talent, honing skills, and fostering a culture of fair play and respect on and off the court.",
                ImageUrl = "~/Assets/Images/Facilities/Sports/basketball.jpg"
            }
        };



        public List<Facility> Amenities = new List<Facility>
        {
            new Facility
            {
                Name = "Open Air Auditorium",
                Title = "Open Air Auditorium",
                Description = "GEMS College is proud to feature an exceptional open-air auditorium that adds a touch of grandeur to our campus. This magnificent outdoor venue serves as the perfect setting for a variety of events, from cultural performances and academic gatherings to inspirational talks and celebratory ceremonies. Our open-air auditorium offers a unique blend of natural beauty and modern amenities. Surrounded by lush greenery and open skies, it provides a serene and inspiring backdrop for any occasion. With state-of-the-art sound and lighting systems, it ensures that every event held here is nothing short of spectacular.",
                ImageUrl = "~/Assets/Images/Facilities/Amenities/openair.jpg"
            },
            new Facility
            {
                Name = "Theater",
                Title = "Theater",
                Description = "GEMS College takes immense pride in its state-of-the-art theater, a dynamic space that ignites creativity and celebrates the performing arts. Our theater serves as a hub of artistic expression, where students can explore their talents in acting, directing, and stagecraft while fostering a deep appreciation for the dramatic arts. Designed to meet the highest standards, our theater boasts cutting-edge audiovisual equipment, a versatile stage, and comfortable seating to ensure every performance is a masterpiece. Whether it's a classic play, a contemporary drama, or a musical extravaganza, our theater provides the perfect canvas for students to showcase their artistic prowess.",
                ImageUrl = "~/Assets/Images/Facilities/Amenities/theature.jpeg"
            },
            new Facility
            {
                Name = "Transportation",
                Title = "Transportation",
                Description = "GEMS Provides transportation facilities from Malappuram, Perinthalmanna, Manjeri and Kottakkal.Students who need college bus facility are directed to register with relevant authorities along with college id’s.The registration for allocation of seats to the buses will be on first come first served basis.",
                ImageUrl = "~/Assets/Images/Facilities/Amenities/transportation.jpg"
            },
            new Facility
            {
                Name = "Library",
                Title = "Dr.A.P.J. Abdul Kalam Library & Research Centre",
                Description = "Dr.A.P.J Abdul Kalam Library & Research Centre of the Gems Arts & Science College Ramapuram is one of the best libraries under affiliated Colleges of the University of Calicut. Being the hub for information and learning process,a well-designed library functions has been ensured for the utilisation of both the staff and learners in and outside of the institution.",
                ImageUrl = "~/Assets/Images/Facilities/Amenities/library.jpg"
            },
            new Facility
            {
                Name = "Cafeteria",
                Title = "Cafeteria",
                Description = "GEMS college premises are delighted to provide hygienic food & breweries in good quality. We maintain good waste management system and proper channel for each food preparation. Almost all kind traditional foods are available according to scheduled timing in the region.",
                ImageUrl = "~/Assets/Images/Facilities/Amenities/cafeteria.jpeg"
            },
            new Facility
            {
                Name = "Hostel",
                Title = "Hostel",
                Description = "Hostel for girls with excellent amentities have been provided inside the college campus. The ladies` hostel can accomodate about 200 inmates. The hostel is provided with spacious mess halls and modern kitchens. Caring wardens and tight security ensures a pleasant stay, allowing students to focus on their studies.",
                ImageUrl = "~/Assets/Images/Facilities/Amenities/hostel.jpg"
            },
            new Facility
            {
                Name = "Alternate Source Of Energy",
                Title = "Alternate Source Of Energy",
                Description = "A well maintained solar power system is established in the college which is used as an alternative source of energy consumption . The solar power system was installed by Green solar company. The solar panels are from Vikram solar / We are solar/Adani solar .The solar panels have a capacity of 20 kw K Wp .The solar panel can produce an electricity of 85 to 90 units per day.",
                ImageUrl = "~/Assets/Images/Facilities/Amenities/energy.jpg"
            }
        };



        public List<Facility> GetSports()
        {
            return Sports;
        }

        public List<Facility> GetLearnings()
        {
            return Learnings;
        }

        public List<Facility> GetAmenities()
        {
            return Amenities;
        }
    }
}