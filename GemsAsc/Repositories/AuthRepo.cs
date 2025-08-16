using GemsAsc.DTOs.User;
using GemsAsc.Pages;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Xml.Linq;

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
                        user.IsBlocked = (bool)reader["IsBlocked"];
                    }
                }

                return user;
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }



        public bool RegistrUser(RegisterUserDTO userDto)
        {
            try
            {
                using(SqlConnection conn = DatabaseHelper.GetConnection())
                {
                    conn.Open();    

                    using(SqlTransaction  tran = conn.BeginTransaction())
                    {
                        try
                        {
                            // Insert into Users and get UserID
                            string insertUserQuery = @"
                            INSERT INTO Users (Name, Email, UserPassword, DepartmentID, Role)
                            OUTPUT INSERTED.UserID
                            VALUES (@Name, @Email, @UserPassword, 
                                   (SELECT DepartmentID FROM Departments WHERE Name = @DepartmentName),
                                   'Student')";

                            string userId;
                            using(SqlCommand cmd = new SqlCommand(insertUserQuery, conn, tran))
                            {
                                cmd.Parameters.AddWithValue("@Name", userDto.Name);
                                cmd.Parameters.AddWithValue("@Email", userDto.Email);
                                cmd.Parameters.AddWithValue("@UserPassword", userDto.Password);
                                cmd.Parameters.AddWithValue("@DepartmentName", userDto.Department);

                                userId = cmd.ExecuteScalar().ToString();
                            }


                            // Insert into Students table
                            string insertStudentQuery = @"
                            INSERT INTO Students (UserID, AddNo, RegisterNo, Course)
                            VALUES (@UserID, @AddNo, @RegisterNo, @Course)";

                            using( SqlCommand cmd = new SqlCommand( insertStudentQuery, conn, tran))
                            {
                                cmd.Parameters.AddWithValue("@UserID", userId);
                                cmd.Parameters.AddWithValue("@AddNo", userDto.AddNo);
                                cmd.Parameters.AddWithValue("@RegisterNo", userDto.RegNo);
                                cmd.Parameters.AddWithValue("@Course", userDto.Course);

                                cmd.ExecuteNonQuery();
                            }
                            
                            tran.Commit();
                        
                            return true;
                        }
                        catch (Exception ex)
                        {
                            tran.Rollback();
                            Console.WriteLine("Error: " + ex.Message);
                            return false;
                        }
                    }
                } 
            }
            catch (Exception ex)
            {
                Console.WriteLine("Connection Error: " + ex.Message);
                return false;
            }
        }



        public UserProfileDTO GetUserProfileById(string userId)
        {
            try
            {
                UserProfileDTO userProfile = new UserProfileDTO();
                using(SqlConnection conn = DatabaseHelper.GetConnection())
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("GetUserDetailsById", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@UserID", userId.ToString());

                        SqlDataReader reader = cmd.ExecuteReader();

                        if(reader.Read())
                        {
                            userProfile = new UserProfileDTO
                            {
                                UserID = reader.GetOrdinal("UserID").ToString(),
                                Name = reader["Name"].ToString(),
                                Email = reader["Email"].ToString(),
                                AddNo = Convert.ToInt32(reader["AddNo"]),
                                RegisterNo = reader["RegisterNo"].ToString(),
                                Course = reader["Course"].ToString(),
                                Department = reader["Department"].ToString(),
                                ImageUrl = reader["ImageUrl"].ToString()
                            };
                        }
                    }
                }

                return userProfile;
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}