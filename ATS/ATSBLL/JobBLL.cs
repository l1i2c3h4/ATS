using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using ATS.ATSDLL;
using ATS.ATSEntity;

namespace ATS.ATSBLL
{
    public static class JobBLL
    {
        public static DataTable GetBynull()
        {         
            return JobDLL.GetBynull();
        }

        public static void DeletedJob(string job)
        {
            JobDLL.DeletedJob(job);
        }

        public static void AddJob(string job)
        {
            JobDLL.AddJob(job);
        }
    }
}