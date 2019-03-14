using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using ATS.ATSDLL;
using ATSEntity;

namespace ATS.ATSBLL
{
    public static class JobBLL
    {
        public static DataTable GetBynull()
        {         
            return JobDLL.GetBynull();
        }
    }
}