using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class Center
    {
        public int CenterId { get; set; }
        public string CenterName { get; set; }

        public string Location { get; set; }

        public Center(int centerId, string centerName, string location)
        {
            this.CenterId = centerId;
            this.CenterName = centerName;
            this.Location = location;
        }

        public Center(string centerName, string location)
        {
            this.CenterName = centerName;
            this.Location = location;
        }
    }
}
