using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class Account
    {
        public int Id { get; set; }
        public String Name { get; set; }
        public String Email { get; set; }
        public int Role { get; set; }
        // 1: Admin
        // 2: Staff
        // 3: Teacher
        public String Password { get; set; }

        public Account(String name, String email, String password)
        {
            this.Email = email;     
            this.Password = password;
        }

        public Account(int id, String name, int role, String email, String password)
        {
            this.Id = id;
            this.Name = name;
            this.Role = role;
            this.Email = email;
            this.Password = password;
        }
    }
}
