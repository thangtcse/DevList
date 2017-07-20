using ITMaster.Entity;
using ITMaster.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Globalization;

namespace ITMaster.MainbusinessLayer
{
    public class MainBusiness
    {
        //Account
        public static void CreateAccount(Account a)
        {
            DataAccess.CreateAccount(a);
        }

       

        public static void EditAccount(Account a)
        {
            DataAccess.EditAccount(a);
        }
        public static void DeleteAccount(int accountId)
        {
            DataAccess.DeleteAccount(accountId);
        }

        public static Account GetAccountByEmailAndPassword(String emailInput, String passwordInput)
        {
            return DataAccess.GetAccountByEmailAndPassword(emailInput, passwordInput);
        }


        public static Account GetAccountById(int id)
        {
            return DataAccess.GetAccountById(id);
        }

        public static List<Account> GetAccountList()
        {
            return DataAccess.GetAccountList();
        }

        //Center
        public static void CreateCenter(Center c)
        {
            DataAccess.CreateCenter(c);
        }

        public static void EditCenter(Center c)
        {
            DataAccess.EditCenter(c);
        }
        public static void DeleteCenter(int centerId)
        {
            DataAccess.DeleteCenter(centerId);
        }


        public static Account GetCenterById(int centerId)
        {
            return DataAccess.GetAccountById(centerId);
        }

        public static List<Center> GetAllCenters()
        {
            return DataAccess.GetAllCenters();
        }

        //Course
        public static void CreateCourse(Course c)
        {
            DataAccess.CreateCourse(c);
        }

        public static void EditCourse(Course c)
        {
            DataAccess.EditCourse(c);
        }
        public static void DeleteCourse(int courseId)
        {
            DataAccess.DeleteCourse(courseId);
        }


        public static Course GetCourseById(int courseId)
        {
            return DataAccess.GetCourseById(courseId);
        }

        public static List<Course> GetAllCourses()
        {
            return DataAccess.GetAllCourses();
        }

        //Class
        public static void CreateClass(Classes c)
        {
            DataAccess.CreateClass(c);
        }

        public static void EditClass(Classes c)
        {
            DataAccess.EditClass(c);
        }
        public static void DeleteClass(int classId)
        {
            DataAccess.DeleteClass(classId);
        }


        public static Classes GetClassById(int classId)
        {
            return DataAccess.GetClassById(classId);
        }

        public static List<Classes> GetAllClasses()
        {
            return DataAccess.GetAllClasses();
        }

    }
}
