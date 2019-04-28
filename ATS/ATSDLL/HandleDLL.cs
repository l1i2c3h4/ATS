using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using ATS.ATSEntity;
using System.Data.SqlClient;
using System.Data.Common;

namespace ATS.ATSDLL
{
    public static class HandleDLL
    {
        /// <summary>
        /// 根据IDNumber插入新的处理条目
        /// </summary>
        /// <param name="IDNumber"></param>
        public static void AddHandle(int IDNumber)
        {
            using (SqlHelper db = new SqlHelper())
            {
                //构建插入sql语句
                string sql = "insert into handle "
                    + " (IDNumber,resume,interview) "
                    + " values(@IDNumber,@resume,@interview)";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@IDNumber", DbType.Int32, IDNumber);
                    db.AddInParameter(command, "@resume", DbType.String, "未处理");
                    db.AddInParameter(command, "@interview", DbType.String, "未处理");
                    db.ExecuteNonQuery(command);
                }
            }
        }

        /// <summary>
        /// 根据IDNumber查询简历处理情况
        /// </summary>
        /// <param name="IDNumber"></param>
        /// <returns></returns>
        public static Handle SearchAll(int IDNumber)
        {
            Handle handle = null;
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "select IDhandle,resume,interview from handle where IDNumber = @IDNumber";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@IDNumber", DbType.String, IDNumber);
                    using (DbDataReader reader = db.ExecuteReader(command))
                    {
                        if (!reader.Read())
                            return null;
                        handle = new Handle();
                        handle.IDhandle = Convert.ToInt32(reader["IDhandle"]);
                        handle.IDNumber = IDNumber;
                        handle.Resume = Convert.ToString(reader["resume"]);
                        handle.Interview = Convert.ToString(reader["interview"]);
                    }

                }
            }

            return handle;
        }

    }
}