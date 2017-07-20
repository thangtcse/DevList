using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class Course
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }

        public int CenterId { get; set; }

        public Course(int id, string courseName, int centerId)
        {
            this.CenterId = id;
            this.CourseName = courseName;
            this.CenterId = centerId;
        }
    }
}
