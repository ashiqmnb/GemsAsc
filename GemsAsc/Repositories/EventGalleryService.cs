using Dapper;
using GemsAsc.DTOs;
using GemsAsc.DTOs.User;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class DapperContext
    {
        public IDbConnection CreateConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        }
    }

    public class EventGalleryService
    {
        private readonly DapperContext _context = new DapperContext();


        public int AddGallery(string title, string imageUrl)
        {
            string query = "INSERT INTO Galleries(Title, ImageUrl) Values(@Title, @ImageUrl);";

            try
            {
                using(var conn = _context.CreateConnection())
                {
                    return conn.Execute(query, new
                    {
                        Title = title,
                        ImageUrl = imageUrl
                    });
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public List<GalleryItem> GetGalleryItems()
        {
            string query = "SELECT Title, ImageUrl FROM Galleries;";
            try
            {
                using( var conn = _context.CreateConnection())
                {
                    return conn.Query<GalleryItem>(query).ToList();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public List<GalleryItem> GetGalleryItemsForHome()
        {
            string query = "SELECT TOP 10 Title, ImageUrl FROM Galleries;";
            try
            {
                using (var conn = _context.CreateConnection())
                {
                    return conn.Query<GalleryItem>(query).ToList();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public int AddEvent(string title, string description, string date, string imageUrl)
        {
            string query = @"INSERT INTO Events (Title, Description, Date, ImageUrl)
                        VALUES (@Title, @Description, @Date, @ImageUrl);";

            try
            {
                using (var conn = _context.CreateConnection())
                {
                    return conn.Execute(query, new
                    {
                        Title = title,
                        Description = description,
                        Date = date,
                        ImageUrl = imageUrl
                    });
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public List<EventDTO> GetEvents()
        {
            string query = "SELECT EventID, Title, ImageUrl, Date FROM Events ORDER BY Date DESC;";
            try
            {
                using (var conn = _context.CreateConnection())
                {
                    return conn.Query<EventDTO>(query).ToList();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public List<EventDTO> GetRecentEvents()
        {
            string query = "SELECT TOP 4 EventID, Title, ImageUrl, Date FROM Events ORDER BY Date DESC;";
            try
            {
                using (var conn = _context.CreateConnection())
                {
                    return conn.Query<EventDTO>(query).ToList();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public EventByIdDTO GetEventById(string id)
        {
            string query = "SELECT * FROM Events WHERE EventID = @EventID;";

            try
            {
                using (var conn = _context.CreateConnection())
                {
                    return conn.QuerySingleOrDefault<EventByIdDTO>(query, new {EventID = id});
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }


    }
}