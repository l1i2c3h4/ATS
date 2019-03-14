using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Web;
using ATSEntity;
using System.Data;

namespace ATS.ATSDLL
{
    public static class JobDLL
    {
        /// <summary>
        /// 读取目前招聘的岗位
        /// </summary>
        /// <returns>返回目前的岗位</returns>
        public static DataTable GetBynull()
        {
            DataTable table = null;
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "select worker from job ";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    table = db.ExecuteDataTable(command);
                }
            }
            return table;
        }
        /// <summary>
        /// 删除选定的招聘职业
        /// </summary>
        /// <param name="job"></param>
        public static void DeletedJob(string job)
        {
            string sql = "delete from job where worker=@job";
            SqlHelper db = new SqlHelper();
            DbCommand command = db.GetSqlStringCommond(sql);
            db.AddInParameter(command, "@job", DbType.String, job);
            db.ExecuteNonQuery(command);
        }

        /// <summary>
        /// 增加一个新的招聘职业
        /// </summary>
        /// <param name="job"></param>
        public static void AddJob(string job)
        {
            string sql = "insert into job(worker) values(@job)";
            SqlHelper db = new SqlHelper();
            DbCommand command = db.GetSqlStringCommond(sql);
            db.AddInParameter(command, "@job", DbType.String, job);
            db.ExecuteNonQuery(command);
        }
    }
}