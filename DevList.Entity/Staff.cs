using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class Staff : Account
    {

        public Staff(int staffId, String name, int role, String email, String password) : base()
        {
            this.Id = staffId;
            this.Name = name;
            this.Role = role;
            this.Email = email;
            this.Password = password;
        }
    }
}
