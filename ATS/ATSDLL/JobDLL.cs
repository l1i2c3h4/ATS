using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Web;
using ATSEntity;

namespace ATS.ATSDLL
{
    public static class JobDLL
    {
        /// <summary>
        /// 读取目前招聘的岗位
        /// </summary>
        /// <returns>返回目前的岗位</returns>
        public static Job GetBynull()
        {
            Job Work = null;
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "select worker from BankAccount ";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    using (DbDataReader reader = db.ExecuteReader(command))
                    {
                        //将从数据库读取的数据转换成Job类的实例
                        if (!reader.Read())
                            return null;
                        Work = new Job
                        {
                            Worker = reader["worker"].ToString()
                        };
                    }
                }
            }
            return Work;
        }
    }
}