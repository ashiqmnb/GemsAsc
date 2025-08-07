using GemsAsc.DTOs;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class DepartmentRepo
    {
        public DepartmentDTO GetDepartmentByName(string name)
        {
            DepartmentDTO dept = new DepartmentDTO();

            using (SqlConnection conn = DatabaseHelper.GetConnection())
            {
                string query = "SELECT * FROM Departments WHERE Name = @deptName";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@deptName", name);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    dept.Name = reader["Name"].ToString();
                    dept.Description = reader["Description"].ToString();
                }
            }


            return dept;
        }
    }
}