using Dapper;
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

    }
}