using GemsAsc.DTOs.User;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace GemsAsc.Repositories
{
    public class AuthRepo
    {
        public UserDTO GetUserByEmail(string email)
        {
            try
            {
                UserDTO user = new UserDTO();
                using (SqlConnection conn = DatabaseHelper.GetConnection())
                {
                    string query = "SELECT * FROM Users WHERE Email = @email";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@email", email);

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        user.UserID = reader["UserID"].ToString();
                        user.Name = reader["Name"].ToString();
                        user.Email = reader["Email"].ToString();
                        user.Password = reader["UserPassword"].ToString();
                        user.Role = reader["Role"].ToString();
                    }
                }

                return user;
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}