using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class Teacher : Account
    {
        public int TeacherId { get; set; }

        public Teacher(int teacherId, String name, int role, String email, String password) : base()
        {
            this.Id = teacherId;
            this.Name = name;
            this.Role = role;
            this.Email = email;
            this.Password = password;
        }
    }
}
