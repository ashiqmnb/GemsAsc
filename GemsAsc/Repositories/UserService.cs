using GemsAsc.Admin.Pages;
using GemsAsc.DTOs;
using GemsAsc.Models;
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

        
        public List<FacultyResDTO> GetFacilities()
        {
            try
            {
                var faculties = _context.Database.SqlQuery<FacultyResDTO>("EXEC GetFaculties").ToList();
                return faculties;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public List<FacultyResDTO> GetFacultiesByDept(string deptName)
        {
            try
            {
                var faculties = _context.Database.SqlQuery<FacultyResDTO>(
                        "EXEC GetFacultiesByDepartment @Dept",
                        new SqlParameter("@Dept", deptName)
                    ).ToList();

                return faculties;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public int ToggleBlock(string id)
        {
            try
            {
                string query = "UPDATE Users SET IsBlocked = CASE WHEN IsBlocked = 1 THEN 0 ELSE 1 END WHERE UserID = @id";
                var res = _context.Database.ExecuteSqlCommand(query,
                        new SqlParameter("@id", id)
                    );
                return res;

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        public List<DepartmentDTO> GetDepartments()
        {
            try
            {
                string query = "SELECT * FROM Departments";
                var depts = _context.Database.SqlQuery<DepartmentDTO>(query).ToList();
                return depts;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

    }
}