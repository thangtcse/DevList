using ITMaster.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace ITMaster.DataAccessLayer
{
    public class DataAccess
    {

        public static String GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["itMasterConnectionString"].ConnectionString;
        }

        //DataAccess for Account

        public static void CreateAccount(Account a)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "INSERT INTO " + DBDefine.DATABASE_TABLE_ACCOUNT + "VALUES(@name, @role, @email, @password)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", a.Name);
            cmd.Parameters.AddWithValue("@role", a.Role);
            cmd.Parameters.AddWithValue("@email", a.Email);
            cmd.Parameters.AddWithValue("@password", a.Password);
            cmd.ExecuteNonQuery();
            conn.Close();
        }



        public static void EditAccount(Account a)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "UPDATE " + DBDefine.DATABASE_TABLE_ACCOUNT + " SET "
                + DBDefine.DATABASE_COLUMN_ACCOUNT_NAME + " = @name,"
                + DBDefine.DATABASE_COLUMN_ACCOUNT_ROLE + " = @role,"
                + DBDefine.DATABASE_COLUMN_ACCOUNT_EMAIL + " = @email,"
                + DBDefine.DATABASE_COLUMN_ACCOUNT_PASSWORD + " = @password"
                + "where" + DBDefine.DATABASE_COLUMN_ACCOUNT_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", a.Name);
            cmd.Parameters.AddWithValue("@role", a.Role);
            cmd.Parameters.AddWithValue("@email", a.Email);
            cmd.Parameters.AddWithValue("@password", a.Password);
            cmd.Parameters.AddWithValue("@id", a.Id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }


        public static void DeleteAccount(int accId)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "DELETE FROM " + DBDefine.DATABASE_TABLE_ACCOUNT
                 + " where" + DBDefine.DATABASE_COLUMN_ACCOUNT_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", accId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static Account GetAccountByEmailAndPassword(String emailInput, String passwordInput)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_ACCOUNT
                + " where" 
                + DBDefine.DATABASE_COLUMN_ACCOUNT_EMAIL + " = @email AND "
                + DBDefine.DATABASE_COLUMN_ACCOUNT_PASSWORD + " = @password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@email", emailInput);
            cmd.Parameters.AddWithValue("@password", passwordInput);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_ACCOUNT_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_NAME].ToString().Trim();
                int role = int.Parse(dr[DBDefine.DATABASE_COLUMN_ACCOUNT_ROLE].ToString().Trim());
                String email = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_EMAIL].ToString().Trim();
                String password = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_PASSWORD].ToString().Trim();

                Account a = new Account(id, name, role, email, password);
                return a;

            }
            conn.Close();
            return null;
        }

        public static Account GetAccountById(int id)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_ACCOUNT
                 + " where" + DBDefine.DATABASE_COLUMN_ACCOUNT_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", id);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String name = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_NAME].ToString().Trim();
                int role = int.Parse(dr[DBDefine.DATABASE_COLUMN_ACCOUNT_ROLE].ToString().Trim());
                String email = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_EMAIL].ToString().Trim();
                String password = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_PASSWORD].ToString().Trim();

                Account a = new Account(id, name, role, email, password);
                return a;

            }
            conn.Close();
            return null;
        }


        public static List<Account> GetAccountList()
        {
            List<Account> list = new List<Account>();
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_ACCOUNT;
            SqlCommand cmd = new SqlCommand(query, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_ACCOUNT_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_NAME].ToString().Trim();
                int role = int.Parse(dr[DBDefine.DATABASE_COLUMN_ACCOUNT_ROLE].ToString().Trim());
                String email = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_EMAIL].ToString().Trim();
                String password = dr[DBDefine.DATABASE_COLUMN_ACCOUNT_PASSWORD].ToString().Trim();

                Account acc = new Account(id, name, role, email, password);

                list.Add(acc);

            }
            conn.Close();
            return list;
        }

        public static bool CheckEmailDuplicate(String emailInput)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_ACCOUNT
                + " where"
                + DBDefine.DATABASE_COLUMN_ACCOUNT_EMAIL + " = @email";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@email", emailInput);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                return true;
            }
            conn.Close();
            return false;
        }

        //DataAccess for Center

        public static void CreateCenter(Center c)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "INSERT INTO " + DBDefine.DATABASE_TABLE_CENTER + " VALUES(@name, @location)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", c.CenterName);
            cmd.Parameters.AddWithValue("@location", c.Location);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static void EditCenter(Center c)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "UPDATE " + DBDefine.DATABASE_TABLE_CENTER
                 + " SET "
                 + DBDefine.DATABASE_COLUMN_CENTER_NAME + " = @name,"
                 + DBDefine.DATABASE_COLUMN_CENTER_LOCATION + " = @location "
                 + "where "
                 + DBDefine.DATABASE_COLUMN_CENTER_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", c.CenterName);
            cmd.Parameters.AddWithValue("@location", c.Location);
            cmd.Parameters.AddWithValue("@id", c.CenterId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }


        public static void DeleteCenter(int centerId)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "DELETE FROM " + DBDefine.DATABASE_TABLE_CENTER 
                + " where " + DBDefine.DATABASE_COLUMN_CENTER_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", centerId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static List<Center> GetAllCenters()
        {
            List<Center> list = new List<Center>();
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_CENTER;
            SqlCommand cmd = new SqlCommand(query, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_CENTER_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_CENTER_NAME].ToString().Trim();
                String location = dr[DBDefine.DATABASE_COLUMN_CENTER_LOCATION].ToString().Trim();

                Center center = new Center(id, name, location);

                list.Add(center);

            }
            conn.Close();
            return list;
        }
        public static Center GetCenterById(int centerId)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_CENTER + " where "
                + DBDefine.DATABASE_COLUMN_CENTER_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", centerId);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_CENTER_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_CENTER_NAME].ToString().Trim();
                String location = dr[DBDefine.DATABASE_COLUMN_CENTER_LOCATION].ToString().Trim();

                Center center = new Center(id, name, location);

                return center;

            }
            conn.Close();
            return null;
        }

        //DataAccess for Course
        public static void CreateCourse(Course c)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "INSERT INTO " + DBDefine.DATABASE_TABLE_COURSE + " VALUES(@name, @centerId)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", c.CourseName);
            cmd.Parameters.AddWithValue("@centerId", c.CenterId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static void EditCourse(Course c)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "UPDATE " + DBDefine.DATABASE_TABLE_COURSE + 
                " SET " + DBDefine.DATABASE_COLUMN_COURSE_NAME + " = @name, "
                + DBDefine.DATABASE_COLUMN_COURSE_CENTER_ID + " = @centerId where "
                + DBDefine.DATABASE_COLUMN_COURSE_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", c.CourseName);
            cmd.Parameters.AddWithValue("@location", c.CenterId);
            cmd.Parameters.AddWithValue("@id", c.CourseId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }


        public static void DeleteCourse(int courseId)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "DELETE  " + DBDefine.DATABASE_TABLE_COURSE + "where "
                + DBDefine.DATABASE_COLUMN_COURSE_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", courseId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static List<Course> GetAllCourses()
        {
            List<Course> list = new List<Course>();
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_COURSE;
            SqlCommand cmd = new SqlCommand(query, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_COURSE_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_COURSE_NAME].ToString().Trim();
                int centerId = int.Parse(dr[DBDefine.DATABASE_COLUMN_COURSE_CENTER_ID].ToString().Trim());

                Course course = new Course(id, name, centerId);

                list.Add(course);

            }
            conn.Close();
            return list;
        }

        public static Course GetCourseById(int courseId)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_COURSE + " where "
                + DBDefine.DATABASE_COLUMN_COURSE_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", courseId);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_COURSE_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_COURSE_NAME].ToString().Trim();
                int centerId = int.Parse(dr[DBDefine.DATABASE_COLUMN_COURSE_CENTER_ID].ToString().Trim());

                Course course = new Course(id, name, centerId);

                return course;

            }
            conn.Close();
            return null;
        }

        //Database for Class
        public static void CreateClass(Classes c)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "INSERT INTO " + DBDefine.DATABASE_TABLE_CLASS + " VALUES(@name, @courseId)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", c.ClassName);
            cmd.Parameters.AddWithValue("@courseId", c.CourseId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static void EditClass(Classes c)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "UPDATE " + DBDefine.DATABASE_TABLE_CLASS +
                " SET " + DBDefine.DATABASE_COLUMN_CLASS_NAME + " = @name, "
                + DBDefine.DATABASE_COLUMN_CLASS_COURSE_ID + " = @courseId where "
                + DBDefine.DATABASE_COLUMN_CLASS_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", c.ClassName);
            cmd.Parameters.AddWithValue("@courseId", c.CourseId);
            cmd.Parameters.AddWithValue("@id", c.ClassId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }


        public static void DeleteClass(int classId)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "DELETE  " + DBDefine.DATABASE_TABLE_CLASS + "where "
                + DBDefine.DATABASE_COLUMN_CLASS_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", classId);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static List<Classes> GetAllClasses()
        {
            List<Classes> list = new List<Classes>();
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_CLASS;
            SqlCommand cmd = new SqlCommand(query, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_CLASS_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_CLASS_NAME].ToString().Trim();
                int courseId = int.Parse(dr[DBDefine.DATABASE_COLUMN_CLASS_COURSE_ID].ToString().Trim());

                Classes cl = new Classes(id, name, courseId);

                list.Add(cl);

            }
            conn.Close();
            return list;
        }

        public static Classes GetClassById(int classId)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            String query = "SELECT * FROM " + DBDefine.DATABASE_TABLE_CLASS + " where "
                + DBDefine.DATABASE_COLUMN_CLASS_ID + " = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", classId);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = int.Parse(dr[DBDefine.DATABASE_COLUMN_CLASS_ID].ToString().Trim());
                String name = dr[DBDefine.DATABASE_COLUMN_CLASS_NAME].ToString().Trim();
                int courseId = int.Parse(dr[DBDefine.DATABASE_COLUMN_CLASS_COURSE_ID].ToString().Trim());

                Classes cl = new Classes(id, name, courseId);

                return cl;

            }
            conn.Close();
            return null;
        }
    }
}
