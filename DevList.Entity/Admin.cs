using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class Admin : Account
    {
        public Admin(int adminId, String name, int role, String email, String password, int centerId) : base()
        {
            this.Id = adminId;
            this.Name = name;
            this.Role = role;
            this.Email = email;
            this.Password = password;
            this.CenterId = centerId;
        }
    }
}
