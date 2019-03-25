using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using ATSEntity;
using System.Data.SqlClient;
using System.Data.Common;

namespace ATS.ATSDLL
{
    public static class BaseInformationDLL
    {
        public static void AddBaseInformation(BaseInfomation b, Family f, Study s, Work w)
        {
            string sql = "insert into baseinformation(" +
                "name,IDCard,gender,dateOfBirth,maritalStatus,politicalStatus,nativePlace,height,weight,communicableDisease,achromatopsia,EstimatedTime,Email,phone,address,firstChoice,secondChoice,adjust,workBeginTime01,workEndTime01,workPlace01,workJob01,workBeginTime02,workEndTime02,workPlace02,workJob02,workBeginTime03,workEndTime03,workPlace03,workJob03,workPerformance,studyBeginTime01,studyEndTime01,studyPlace01,studyMajor01,studyBeginTime02,studyEndTime02,studyPlace02,studyMajor02,studyBeginTime03,studyEndTime03,studyPlace03,studyMajor03,studyEnglish,studyConputer,studyOther,studyPerformance,familyRelationship01,familyName01,familyAge01,familyPlace01,familyJob01,familyRelationship02,familyName02,familyAge02,familyPlace02,familyJob02,,familyRelationship03,familyName03,familyAge03,familyPlace03,familyJob03,time) values(" +
                "@name,@IDCard,@gender,@dateOfBirth,@maritalStatus,@politicalStatus,@nativePlace,@height,@weight,@communicableDisease,@achromatopsia,@EstimatedTime,@Email,@phone,@address,@firstChoice,@secondChoice,@adjust,@workBeginTime01,@workEndTime01,@workPlace01,@workJob01,@workBeginTime02,@workEndTime02,@workPlace02,@workJob02,@workBeginTime03,@workEndTime03,@workPlace03,@workJob03,@workPerformance,@studyBeginTime01,@studyEndTime01,@studyPlace01,@studyMajor01,@studyBeginTime02,@studyEndTime02,@studyPlace02,@studyMajor02,@studyBeginTime03,@studyEndTime03,@studyPlace03,@studyMajor03,@studyEnglish,@studyConputer,@studyOther,@studyPerformance,@familyRelationship01,@familyName01,@familyAge01,@familyPlace01,@familyJob01,@familyRelationship02,@familyName02,@familyAge02,@familyPlace02,@familyJob02,@familyRelationship03,@familyName03,@familyAge03,@familyPlace03,@familyJob03,@time)";
            SqlHelper db = new SqlHelper();
            DbCommand command = db.GetSqlStringCommond(sql);
            db.AddInParameter(command, "@name", DbType.String, b.Name);
            db.AddInParameter(command, "@IDCard", DbType.String, b.IDCare);
            db.AddInParameter(command, "@gender", DbType.String, b.Gender);
            db.AddInParameter(command, "@dateOfBirth", DbType.String, b.DateOfBirth);
            db.AddInParameter(command, "@maritalStatus", DbType.String, b.IDCare);
            db.AddInParameter(command, "@politicalStatus", DbType.String, b.PoliticalStatus);
            db.AddInParameter(command, "@nativePlace", DbType.String, b.NativePlace);
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
            db.ExecuteNonQuery(command);
        }

    }
}