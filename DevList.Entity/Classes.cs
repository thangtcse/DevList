using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public class Classes
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; }

        public int CourseId { get; set; }

        public Classes(int classId, string className, int courseId)
        {
            this.ClassId = classId;
            this.ClassName = className;
            this.CourseId = courseId;
        }
    }
}
