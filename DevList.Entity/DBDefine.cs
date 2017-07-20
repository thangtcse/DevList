using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ITMaster.Entity
{
    public static class DBDefine
    {
        public const string DATABASE_TABLE_ACCOUNT = "Account";

        public const string DATABASE_TABLE_CENTER_ADMIN = "CenterAdmin";
        public const string DATABASE_TABLE_STAFF = "Staff";
        public const string DATABASE_TABLE_TEACHER = "Teacher";

        public const string DATABASE_TABLE_CENTER = "Center";
        public const string DATABASE_TABLE_COURSE = "Course";
        public const string DATABASE_TABLE_CLASS = "Class";

        public const string DATABASE_COLUMN_ID = "id";

        public const string DATABASE_COLUMN_ACCOUNT_ID = "id";
        public const string DATABASE_COLUMN_ACCOUNT_NAME = "name";
        public const string DATABASE_COLUMN_ACCOUNT_ROLE = "role";
        public const string DATABASE_COLUMN_ACCOUNT_EMAIL = "email";
        public const string DATABASE_COLUMN_ACCOUNT_PASSWORD = "password";
        public const string DATABASE_COLUMN_ACCOUNT_CENTERID = "centerId";

        public const string DATABASE_COLUMN_CENTER_ID = "id";
        public const string DATABASE_COLUMN_CENTER_NAME = "name";
        public const string DATABASE_COLUMN_CENTER_LOCATION = "location";

        public const string DATABASE_COLUMN_COURSE_ID = "id";
        public const string DATABASE_COLUMN_COURSE_NAME = "name";
        public const string DATABASE_COLUMN_COURSE_CENTER_ID = "centerId";

        public const string DATABASE_COLUMN_CLASS_ID = "id";
        public const string DATABASE_COLUMN_CLASS_NAME = "name";
        public const string DATABASE_COLUMN_CLASS_COURSE_ID = "courseId";

    }
}
