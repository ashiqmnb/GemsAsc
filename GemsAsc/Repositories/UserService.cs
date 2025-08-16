using GemsAsc.DTOs;
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GemsAsc.Repositories
{
    public class AppDbContext : DbContext
    {
        public AppDbContext() : base(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString)
        {
        }
    }
    public class UserService
    {
        public readonly AppDbContext _context;

        public UserService()
        {
            _context = new AppDbContext();
        }

        public List<Student> GetStudents()
        {
            try
            {
                var students = _context.Database.SqlQuery<Student>("EXEC GetStudents").ToList();
                return students;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public List<Student> GetStudentsByDept(string deptName)
        {
            try
            {
                var students = _context.Database.SqlQuery<Student>(
                        "EXEC GetStudentsByDepartment @Dept",
                        new SqlParameter("@Dept", deptName)
                    ).ToList();

                return students;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

    }
}