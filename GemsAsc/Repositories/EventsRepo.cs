using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class Event
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime Date { get; set; }
        public List<string> Images { get; set; }

    }
    public class EventsRepo
    {
        List<Event> Events = new List<Event> 
        { 
            new Event
            {
                Id = 1,
                Date = DateTime.Now,
                Title = "PATHFINDER : SET GOALS, SHARPEN SKILLS",
                Description = "The Training and Placement Cell organized an inspiring session titled “Pathfinder – Goal Setting and Sharpen Skills” for the final year students. The session was conducted by Ms. Safa M. P., Trainer and Motivational Speaker, who delivered an impactful and highly engaging session on personal and professional goal setting.\r\nMs. Safa began the session by encouraging each student to write down their dreams and aspirations, setting a reflective and motivational tone. Using this activity as a foundation, she navigated the students through the importance of having a clear vision, setting achievable goals, and working consistently towards them.\r\nThroughout the session, she shared several powerful life experiences and real-world examples, which deeply resonated with the students. Her dynamic approach and interactive style kept the audience engaged, making the session both thought-provoking and enjoyable.\r\nStudents participated actively, and the session sparked a lot of personal introspection and enthusiasm among them. The feedback received was overwhelmingly positive, with many students expressing that the session helped them gain clarity about their future and motivated them to take proactive steps towards their career goals.\r\nOverall, the Pathfinder session served as a meaningful and motivating experience for the final year students as they prepare for their professional journeys ahead.",
                Images = new List<string>
                {
                    "~/Assets/Images/Events/event1a.jpg",
                    "~/Assets/Images/Events/event1b.jpeg",
                    "~/Assets/Images/Events/event1c.jpeg",
                    "~/Assets/Images/Events/event1d.jpeg"
                }
            },
            new Event
            {
                Id = 2,
                Date = DateTime.Now,
                Title = "BOOK LAUNCH",
                Description = "",
                Images = new List<string>
                {
                    "~/Assets/Images/Events/event2a.jpg"
                }
            },
            new Event
            {
                Id = 3,
                Date = DateTime.Now,
                Title = "Sapling for Sustainability, Environment Day Celebration",
                Description = "The PG Department of Commerce, in collaboration with the Internal Quality Assurance Cell (IQAC), organized a sapling plantation drive titled “Sapling for Sustainability” on the occasion of World Environment Day, June 5th, 2025. The event aimed to raise awareness about environmental conservation and to promote sustainable practices among students and staff.\r\nThe event commenced at 10:00 AM at the Medicinal Garden located on the college campus. The program was graced by the presence of faculty members, students, and administrative staff.\r\nMr. Sivakumar, Head of the Department, addressed the gathering and spoke on the significance of World Environment Day.\r\nMr. Mohammed Ashraf M shared insights on environmental challenges and the responsibility of every individual, especially the youth, in promoting sustainability and ecological awareness.\r\nFollowing the address, participants engaged in the plantation of a variety of medicinal saplings including Tulsi, henna plant,curry leaf plant",
                Images = new List<string>
                {
                    "~/Assets/Images/Events/event3a.jpg",
                    "~/Assets/Images/Events/event3b.jpeg",
                    "~/Assets/Images/Events/event3c.jpeg"
                }
            },
            new Event
            {
                Id = 4,
                Date = DateTime.Now,
                Title = "LITPHORIA, ENGLISH ASSOCIATION PROGRAMME",
                Description = "he official mauguration of the English Association at Gems Arts and Science College, Ramapuram took place on the 30th of January 2025, at the MP Narayanamenon Hall, from 10:00 AM to 1:00 PM. The event marked the commencement of a new chapter for the association, fostering academic growth and cultural engagement.\r\n\r\nThe Inaugural session was graced by the esteemed presence of Vasudevan Sir. Vice Chairman of Gems Arts and Science College, who inaugurated the event. 66 students were participated. His speech focused on the importance of holistic development, the role of English in global communication, and its significance in the evolving academic landscape The chief guest for the event. Ms. Kaikasi V.S., Assistant Professor of English at Government Arts and Science College Mankada, delivered an inspiring keynote address. She emphasized the importance of language skills in personal development and professional success. The event also included an interactions with students and a brief presentation on the association's upcoming activities and goals.",
                Images = new List<string>
                {
                    "~/Assets/Images/Events/event4a.jpg",
                    "~/Assets/Images/Events/event4b.jpg",
                    "~/Assets/Images/Events/event4c.jpg",
                    "~/Assets/Images/Events/event4d.jpg"
                }
            }
        };

        public List<Event> GetAllEvents()
        {
            return Events;
        }

        public Event GetEventById(int id)
        {
            var eve = Events.FirstOrDefault(e => e.Id == id);
            return eve;
        }
    }
}