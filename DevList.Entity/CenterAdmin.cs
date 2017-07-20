using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class CenterAdmin : Account
    {

        public CenterAdmin(int centerId, String name, int role, String email, String password) : base()
        {
            this.Id = centerId;
            this.Name = name;
            this.Role = role;
            this.Email = email;
            this.Password = password;
        }
    }
}
