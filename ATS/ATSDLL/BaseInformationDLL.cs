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
    public static class BaseInformationDLL
    {

        public static int SearchIDNumber(string IDCard)
        {

            using (SqlHelper db = new SqlHelper())
            {
                string sql = "select IDNumber from baseInformation where IDCard = @IDCard";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@IDCard", DbType.String, IDCard);
                    using (DbDataReader reader = db.ExecuteReader(command))
                    {
                        //将从数据库读取的数据转换成BaseInfomation类的实例
                        if (!reader.Read())
                            return 0;
                        return Convert.ToInt32(reader["IDNumber"]);
                    }
                }
            }
        }

        /// <summary>
        /// 判断是否为首次提交
        /// </summary>
        /// <param name="b"></param>
        /// <returns></returns>
        public static int SearchBase(string IDCard)
        {
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "select applyNumber from baseInformation where IDCard = @IDCard";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@IDCard", DbType.String, IDCard);
                    using (DbDataReader reader = db.ExecuteReader(command))
                    {
                        //将从数据库读取的数据转换成BaseInfomation类的实例
                        if (!reader.Read())
                            return 0;
                        return Convert.ToInt32(reader["applyNumber"]);
                    }
                }
            }
        }

       
        /// <summary>
        /// 首次提交添加一个新的应聘求职信息
        /// </summary>
        /// <param name="b"></param>
        /// <param name="f"></param>
        /// <param name="s"></param>
        /// <param name="w"></param>
        public static void AddBaseInformation(BaseInformation b, Family f, Study s, Work w)
        {
            //string sql = "insert into baseinformation(name) values(@name)";
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "insert into baseinformation(" +
              "name,IDCard,gender,dateOfBirth,maritalStatus,politicalStatus,nativePlace,educationalBackgrounp,height,weight,communicableDisease,achromatopsia,EstimatedTime,Email,phone,address,firstChoice,secondChoice,adjust,workBeginTime01,workEndTime01,workPlace01,workJob01,workBeginTime02,workEndTime02,workPlace02,workJob02,workBeginTime03,workEndTime03,workPlace03,workJob03,workPerformance,studyBeginTime01,studyEndTime01,studyPlace01,studyMajor01,studyBeginTime02,studyEndTime02,studyPlace02,studyMajor02,studyBeginTime03,studyEndTime03,studyPlace03,studyMajor03,studyEnglish,studyConputer,studyOther,studyPerformance,familyRelationship01,familyName01,familyAge01,familyPlace01,familyJob01,familyRelationship02,familyName02,familyAge02,familyPlace02,familyJob02,familyRelationship03,familyName03,familyAge03,familyPlace03,familyJob03,time,applyNumber) values(" +
               "@name,@IDCard,@gender,@dateOfBirth,@maritalStatus,@politicalStatus,@nativePlace,@educationalBackgrounp,@height,@weight,@communicableDisease,@achromatopsia,@EstimatedTime,@Email,@phone,@address,@firstChoice,@secondChoice,@adjust,@workBeginTime01,@workEndTime01,@workPlace01,@workJob01,@workBeginTime02,@workEndTime02,@workPlace02,@workJob02,@workBeginTime03,@workEndTime03,@workPlace03,@workJob03,@workPerformance,@studyBeginTime01,@studyEndTime01,@studyPlace01,@studyMajor01,@studyBeginTime02,@studyEndTime02,@studyPlace02,@studyMajor02,@studyBeginTime03,@studyEndTime03,@studyPlace03,@studyMajor03,@studyEnglish,@studyConputer,@studyOther,@studyPerformance,@familyRelationship01,@familyName01,@familyAge01,@familyPlace01,@familyJob01,@familyRelationship02,@familyName02,@familyAge02,@familyPlace02,@familyJob02,@familyRelationship03,@familyName03,@familyAge03,@familyPlace03,@familyJob03,@time,@applyNumber)";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@name", DbType.String, b.Name);
                    db.AddInParameter(command, "@IDCard", DbType.String, b.IDCare);
                    db.AddInParameter(command, "@gender", DbType.String, b.Gender);
                    db.AddInParameter(command, "@dateOfBirth", DbType.String, b.DateOfBirth);
                    db.AddInParameter(command, "@maritalStatus", DbType.String, b.MaritalStatus);
                    db.AddInParameter(command, "@politicalStatus", DbType.String, b.PoliticalStatus);
                    db.AddInParameter(command, "@nativePlace", DbType.String, b.NativePlace);
                    db.AddInParameter(command, "@educationalBackgrounp", DbType.String, b.EducationalBackgrounp);
                    db.AddInParameter(command, "@height", DbType.String, b.Height);
                    db.AddInParameter(command, "@weight", DbType.String, b.Weight);
                    db.AddInParameter(command, "@communicableDisease", DbType.String, b.CommunicableDisease);
                    db.AddInParameter(command, "@achromatopsia", DbType.String, b.Achromatopsia);
                    db.AddInParameter(command, "@EstimatedTime", DbType.String, b.EstimatedTime);
                    db.AddInParameter(command, "@Email", DbType.String, b.Email);
                    db.AddInParameter(command, "@phone", DbType.String, b.Phone);
                    db.AddInParameter(command, "@address", DbType.String, b.Address);
                    db.AddInParameter(command, "@firstChoice", DbType.String, b.FirstChoice);
                    db.AddInParameter(command, "@secondChoice", DbType.String, b.SecondChoice);
                    db.AddInParameter(command, "@adjust", DbType.String, b.Adjust);
                    db.AddInParameter(command, "@workBeginTime01", DbType.String, w.WorkBeginTime01);
                    db.AddInParameter(command, "@workEndTime01", DbType.String, w.WorkEndTime01);
                    db.AddInParameter(command, "@workPlace01", DbType.String, w.WorkPlace01);
                    db.AddInParameter(command, "@workJob01", DbType.String, w.WorkJob01);
                    db.AddInParameter(command, "@workBeginTime02", DbType.String, w.WorkBeginTime02);
                    db.AddInParameter(command, "@workEndTime02", DbType.String, w.WorkEndTime02);
                    db.AddInParameter(command, "@workPlace02", DbType.String, w.WorkPlace02);
                    db.AddInParameter(command, "@workJob02", DbType.String, w.WorkJob02);
                    db.AddInParameter(command, "@workBeginTime03", DbType.String, w.WorkBeginTime03);
                    db.AddInParameter(command, "@workEndTime03", DbType.String, w.WorkEndTime03);
                    db.AddInParameter(command, "@workPlace03", DbType.String, w.WorkPlace03);
                    db.AddInParameter(command, "@workJob03", DbType.String, w.WorkJob03);
                    db.AddInParameter(command, "@workPerformance", DbType.String, w.WorkPerformance);
                    db.AddInParameter(command, "@studyBeginTime01", DbType.String, s.StudyBeginTime01);
                    db.AddInParameter(command, "@studyEndTime01", DbType.String, s.StudyEndTime01);
                    db.AddInParameter(command, "@studyPlace01", DbType.String, s.StudyPlace01);
                    db.AddInParameter(command, "@studyMajor01", DbType.String, s.StudyMajor01);
                    db.AddInParameter(command, "@studyBeginTime02", DbType.String, s.StudyBeginTime02);
                    db.AddInParameter(command, "@studyEndTime02", DbType.String, s.StudyEndTime02);
                    db.AddInParameter(command, "@studyPlace02", DbType.String, s.StudyPlace02);
                    db.AddInParameter(command, "@studyMajor02", DbType.String, s.StudyMajor02);
                    db.AddInParameter(command, "@studyBeginTime03", DbType.String, s.StudyBeginTime03);
                    db.AddInParameter(command, "@studyEndTime03", DbType.String, s.StudyEndTime03);
                    db.AddInParameter(command, "@studyPlace03", DbType.String, s.StudyPlace03);
                    db.AddInParameter(command, "@studyMajor03", DbType.String, s.StudyMajor03);
                    db.AddInParameter(command, "@studyEnglish", DbType.String, s.StudyEnglish);
                    db.AddInParameter(command, "@studyConputer", DbType.String, s.StudyConputer);
                    db.AddInParameter(command, "@studyOther", DbType.String, s.StudyOther);
                    db.AddInParameter(command, "@studyPerformance", DbType.String, s.StudyPerformance);
                    db.AddInParameter(command, "@familyRelationship01", DbType.String, f.FamilyRelationship01);
                    db.AddInParameter(command, "@familyName01", DbType.String, f.FamilyName01);
                    db.AddInParameter(command, "@familyAge01", DbType.String, f.FamilyAge01);
                    db.AddInParameter(command, "@familyPlace01", DbType.String, f.FamilyPlace01);
                    db.AddInParameter(command, "@familyJob01", DbType.String, f.FamilyJob01);
                    db.AddInParameter(command, "@familyRelationship02", DbType.String, f.FamilyRelationship02);
                    db.AddInParameter(command, "@familyName02", DbType.String, f.FamilyName02);
                    db.AddInParameter(command, "@familyAge02", DbType.String, f.FamilyAge02);
                    db.AddInParameter(command, "@familyPlace02", DbType.String, f.FamilyPlace02);
                    db.AddInParameter(command, "@familyJob02", DbType.String, f.FamilyJob02);
                    db.AddInParameter(command, "@familyRelationship03", DbType.String, f.FamilyRelationship03);
                    db.AddInParameter(command, "@familyName03", DbType.String, f.FamilyName03);
                    db.AddInParameter(command, "@familyAge03", DbType.String, f.FamilyAge03);
                    db.AddInParameter(command, "@familyPlace03", DbType.String, f.FamilyPlace03);
                    db.AddInParameter(command, "@familyJob03", DbType.String, f.FamilyJob03);
                    db.AddInParameter(command, "@time", DbType.String, DateTime.Now.ToString());
                    db.AddInParameter(command, "@applyNumber", DbType.Int32, b.ApplyNumber);
                    db.ExecuteNonQuery(command);
                }
            }


        }

        /// <summary>
        /// 如果不是首次提交，就更新原有的信息
        /// </summary>
        /// <param name="b"></param>
        /// <param name="f"></param>
        /// <param name="s"></param>
        /// <param name="w"></param>
        public static void UpdateBase(BaseInformation b, Family f, Study s, Work w)
        {
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "update baseinformation set " +
               "name=@name, gender=@gender, dateOfBirth=@dateOfBirth, maritalStatus=@maritalStatus, politicalStatus=@politicalStatus, nativePlace=@nativePlace, educationalBackgrounp=@educationalBackgrounp, height=@height, weight=@weight, communicableDisease=@communicableDisease, achromatopsia=@achromatopsia, EstimatedTime=@EstimatedTime, Email=@Email, phone=@phone, address=@address, firstChoice=@firstChoice, secondChoice=@secondChoice, adjust=@adjust, workBeginTime01=@workBeginTime01, workEndTime01=@workEndTime01, workPlace01=@workPlace01, workJob01=@workJob01,workBeginTime02=@workBeginTime02, workEndTime02=@workEndTime02, workPlace02=@workPlace02, workJob02=@workJob02, workBeginTime03=@workBeginTime03, workEndTime03=@workEndTime03, workPlace03=@workPlace03, workJob03=@workJob03, workPerformance=@workPerformance, studyBeginTime01=@studyBeginTime01, studyEndTime01=@studyEndTime01, studyPlace01=@studyPlace01, studyMajor01=@studyMajor01, studyBeginTime02=@studyBeginTime02, studyEndTime02=@studyEndTime02, studyPlace02=@studyPlace02, studyMajor02=@studyMajor02, studyBeginTime03=@studyBeginTime03, studyEndTime03=@studyEndTime03, studyPlace03=@studyPlace03, studyMajor03=@studyMajor03, studyEnglish=@studyEnglish, studyConputer=@studyConputer, studyOther=@studyOther, studyPerformance=@studyPerformance, familyRelationship01=@familyRelationship01, familyName01=@familyName01, familyAge01=@familyAge01, familyPlace01=@familyPlace01, familyJob01=@familyJob01, familyRelationship02=@familyRelationship02, familyName02=@familyName02, familyAge02=@familyAge02, familyPlace02=@familyPlace02, familyJob02=@familyJob02, familyRelationship03=@familyRelationship03, familyName03=@familyName03, familyAge03=@familyAge03, familyPlace03=@familyPlace03, familyJob03=@familyJob03,time=@time,applyNumber=@applyNumber where IDCard=@IDCard";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@name", DbType.String, b.Name);
                    db.AddInParameter(command, "@IDCard", DbType.String, b.IDCare);
                    db.AddInParameter(command, "@gender", DbType.String, b.Gender);
                    db.AddInParameter(command, "@dateOfBirth", DbType.String, b.DateOfBirth);
                    db.AddInParameter(command, "@maritalStatus", DbType.String, b.MaritalStatus);
                    db.AddInParameter(command, "@politicalStatus", DbType.String, b.PoliticalStatus);
                    db.AddInParameter(command, "@nativePlace", DbType.String, b.NativePlace);
                    db.AddInParameter(command, "@educationalBackgrounp", DbType.String, b.EducationalBackgrounp);
                    db.AddInParameter(command, "@height", DbType.String, b.Height);
                    db.AddInParameter(command, "@weight", DbType.String, b.Weight);
                    db.AddInParameter(command, "@communicableDisease", DbType.String, b.CommunicableDisease);
                    db.AddInParameter(command, "@achromatopsia", DbType.String, b.Achromatopsia);
                    db.AddInParameter(command, "@EstimatedTime", DbType.String, b.EstimatedTime);
                    db.AddInParameter(command, "@Email", DbType.String, b.Email);
                    db.AddInParameter(command, "@phone", DbType.String, b.Phone);
                    db.AddInParameter(command, "@address", DbType.String, b.Address);
                    db.AddInParameter(command, "@firstChoice", DbType.String, b.FirstChoice);
                    db.AddInParameter(command, "@secondChoice", DbType.String, b.SecondChoice);
                    db.AddInParameter(command, "@adjust", DbType.String, b.Adjust);
                    db.AddInParameter(command, "@workBeginTime01", DbType.String, w.WorkBeginTime01);
                    db.AddInParameter(command, "@workEndTime01", DbType.String, w.WorkEndTime01);
                    db.AddInParameter(command, "@workPlace01", DbType.String, w.WorkPlace01);
                    db.AddInParameter(command, "@workJob01", DbType.String, w.WorkJob01);
                    db.AddInParameter(command, "@workBeginTime02", DbType.String, w.WorkBeginTime02);
                    db.AddInParameter(command, "@workEndTime02", DbType.String, w.WorkEndTime02);
                    db.AddInParameter(command, "@workPlace02", DbType.String, w.WorkPlace02);
                    db.AddInParameter(command, "@workJob02", DbType.String, w.WorkJob02);
                    db.AddInParameter(command, "@workBeginTime03", DbType.String, w.WorkBeginTime03);
                    db.AddInParameter(command, "@workEndTime03", DbType.String, w.WorkEndTime03);
                    db.AddInParameter(command, "@workPlace03", DbType.String, w.WorkPlace03);
                    db.AddInParameter(command, "@workJob03", DbType.String, w.WorkJob03);
                    db.AddInParameter(command, "@workPerformance", DbType.String, w.WorkPerformance);
                    db.AddInParameter(command, "@studyBeginTime01", DbType.String, s.StudyBeginTime01);
                    db.AddInParameter(command, "@studyEndTime01", DbType.String, s.StudyEndTime01);
                    db.AddInParameter(command, "@studyPlace01", DbType.String, s.StudyPlace01);
                    db.AddInParameter(command, "@studyMajor01", DbType.String, s.StudyMajor01);
                    db.AddInParameter(command, "@studyBeginTime02", DbType.String, s.StudyBeginTime02);
                    db.AddInParameter(command, "@studyEndTime02", DbType.String, s.StudyEndTime02);
                    db.AddInParameter(command, "@studyPlace02", DbType.String, s.StudyPlace02);
                    db.AddInParameter(command, "@studyMajor02", DbType.String, s.StudyMajor02);
                    db.AddInParameter(command, "@studyBeginTime03", DbType.String, s.StudyBeginTime03);
                    db.AddInParameter(command, "@studyEndTime03", DbType.String, s.StudyEndTime03);
                    db.AddInParameter(command, "@studyPlace03", DbType.String, s.StudyPlace03);
                    db.AddInParameter(command, "@studyMajor03", DbType.String, s.StudyMajor03);
                    db.AddInParameter(command, "@studyEnglish", DbType.String, s.StudyEnglish);
                    db.AddInParameter(command, "@studyConputer", DbType.String, s.StudyConputer);
                    db.AddInParameter(command, "@studyOther", DbType.String, s.StudyOther);
                    db.AddInParameter(command, "@studyPerformance", DbType.String, s.StudyPerformance);
                    db.AddInParameter(command, "@familyRelationship01", DbType.String, f.FamilyRelationship01);
                    db.AddInParameter(command, "@familyName01", DbType.String, f.FamilyName01);
                    db.AddInParameter(command, "@familyAge01", DbType.String, f.FamilyAge01);
                    db.AddInParameter(command, "@familyPlace01", DbType.String, f.FamilyPlace01);
                    db.AddInParameter(command, "@familyJob01", DbType.String, f.FamilyJob01);
                    db.AddInParameter(command, "@familyRelationship02", DbType.String, f.FamilyRelationship02);
                    db.AddInParameter(command, "@familyName02", DbType.String, f.FamilyName02);
                    db.AddInParameter(command, "@familyAge02", DbType.String, f.FamilyAge02);
                    db.AddInParameter(command, "@familyPlace02", DbType.String, f.FamilyPlace02);
                    db.AddInParameter(command, "@familyJob02", DbType.String, f.FamilyJob02);
                    db.AddInParameter(command, "@familyRelationship03", DbType.String, f.FamilyRelationship03);
                    db.AddInParameter(command, "@familyName03", DbType.String, f.FamilyName03);
                    db.AddInParameter(command, "@familyAge03", DbType.String, f.FamilyAge03);
                    db.AddInParameter(command, "@familyPlace03", DbType.String, f.FamilyPlace03);
                    db.AddInParameter(command, "@familyJob03", DbType.String, f.FamilyJob03);
                    db.AddInParameter(command, "@time", DbType.DateTime, DateTime.Now.ToString());
                    db.AddInParameter(command, "@applyNumber", DbType.Int32, b.ApplyNumber);
                    db.ExecuteNonQuery(command);
                }
            }
           
        }

        /// <summary>
        /// 查询基本信息
        /// </summary>
        /// <param name="IDCard"></param>
        /// <returns></returns>
        public static BaseInformation SearchALL(string IDCard)
        {
            BaseInformation baseInformation = null;

            using (SqlHelper db = new SqlHelper())
            {
                string sql = "select name,IDNumber,firstChoice,secondChoice from baseInformation where IDCard = @IDCard";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@IDCard", DbType.String, IDCard);
                    using (DbDataReader reader = db.ExecuteReader(command))
                    {
                        //将从数据库读取的数据转换成BaseInfomation类的实例
                        while (reader.Read())
                        {
                            baseInformation = new BaseInformation();
                            baseInformation.Name = reader["name"].ToString();
                            baseInformation.IDNumber = Convert.ToInt32(reader["IDNumber"].ToString());
                            baseInformation.FirstChoice = reader["firstChoice"].ToString();
                            baseInformation.SecondChoice = reader["secondChoice"].ToString();
                        }
                    }
                }
            }
            return baseInformation;
        }

        public static DataTable SearchView(string beginTime,string endTime,string sortField,string sort)
        {
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "select baseInformation.IDNumber,IDCard,name,resume,interview,educationalBackgrounp,phone,address,firstChoice,secondChoice,adjust from baseInformation,handle where baseInformation.IDNumber = handle.IDNumber and baseInformation.time between @beginTime and @endTime";
                if (!string.IsNullOrEmpty(sortField))
                {
                    sql += " order by " + sortField + " " + sort;
                   
                }


                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@beginTime", DbType.DateTime, beginTime);
                    db.AddInParameter(command, "@endTime", DbType.DateTime, endTime);
                    using (DataTable table = db.ExecuteDataTable(command))
                    {
                        return table;
                    }
                }
            }
        }

        public static void DeletBaseInformation(string IDNumber)
        {
            using (SqlHelper db = new SqlHelper())
            {
                string sql = "delete from baseInformation where IDNumber=@IDNumber";
                using (DbCommand command = db.GetSqlStringCommond(sql))
                {
                    db.AddInParameter(command, "@IDNumber", DbType.String, IDNumber);
                    db.ExecuteReader(command);
                }

            }
        }
    }
}