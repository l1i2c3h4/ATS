using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATS.ATSEntity;
using ATS.ATSBLL;

namespace ATS.ATSUI.hou
{
    public partial class Resume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string id = Request.QueryString["id"];
                databind(id);

            }
        }

        protected void databind(string id)
        {
            BaseInformationALL baseInformationALL = new BaseInformationALL();
            baseInformationALL = BaseInformationBLL.SearchAll(id);
            Label_Name.Text = baseInformationALL.Name;
            Label_IDCard.Text = baseInformationALL.IDCare;
            Label_gender.Text = baseInformationALL.Gender;
            Label_dateOfBirth.Text = baseInformationALL.DateOfBirth;
            Label_maritalStatus.Text = baseInformationALL.MaritalStatus;
            Label_politicalStatus.Text = baseInformationALL.PoliticalStatus;
            Label_nativePlace.Text = baseInformationALL.NativePlace;
            Label_educationalBackgroup.Text = baseInformationALL.EducationalBackgrounp;
            Label_heirht.Text = baseInformationALL.Height;
            Label_weight.Text = baseInformationALL.Weight;
            Label_communicableDisease.Text = baseInformationALL.CommunicableDisease;
            Label_achromatopsia.Text = baseInformationALL.Achromatopsia;
            Label_EstimatedTime.Text = baseInformationALL.EstimatedTime;
            Label_Email.Text = baseInformationALL.Email;
            Label_phone.Text = baseInformationALL.Phone;
            Label_address.Text = baseInformationALL.Address;
            Label_firstChoice.Text = baseInformationALL.FirstChoice;
            Label_secondChoice.Text = baseInformationALL.SecondChoice;
            Label_adjust.Text = baseInformationALL.Adjust;

            Label_workBeginTime01.Text = baseInformationALL.WorkBeginTime01;
            Label_workEndTime01.Text = baseInformationALL.WorkEndTime01;
            Label_workJob01.Text = baseInformationALL.WorkJob01;
            Label_workPlace01.Text = baseInformationALL.WorkJob01;
            Label_workBeginTime02.Text = baseInformationALL.WorkBeginTime02;
            Label_workEndTime02.Text = baseInformationALL.WorkEndTime02;
            Label_workJob02.Text = baseInformationALL.WorkJob02;
            Label_workPlace02.Text = baseInformationALL.WorkJob02;
            Label_workBeginTime03.Text = baseInformationALL.WorkBeginTime03;
            Label_workEndTime03.Text = baseInformationALL.WorkEndTime03;
            Label_workJob03.Text = baseInformationALL.WorkJob03;
            Label_workPlace03.Text = baseInformationALL.WorkJob03;
            Label_workPerformance.Text = baseInformationALL.WorkPerformance;

            Label_studyBeginTime01.Text = baseInformationALL.StudyBeginTime01;
            Label_studyEndTime01.Text = baseInformationALL.StudyEndTime01;
            Label_studyMajor01.Text = baseInformationALL.StudyMajor01;
            Label_studyPlace01.Text = baseInformationALL.StudyPlace01;
            Label_studyBeginTime02.Text = baseInformationALL.StudyBeginTime02;
            Label_studyEndTime02.Text = baseInformationALL.StudyEndTime02;
            Label_studyMajor02.Text = baseInformationALL.StudyMajor02;
            Label_studyPlace02.Text = baseInformationALL.StudyPlace02;
            Label_studyBeginTime03.Text = baseInformationALL.StudyBeginTime03;
            Label_studyEndTime03.Text = baseInformationALL.StudyEndTime03;
            Label_studyMajor03.Text = baseInformationALL.StudyMajor03;
            Label_studyPlace03.Text = baseInformationALL.StudyPlace03;
            Label_studyEnglish.Text = baseInformationALL.StudyEnglish;
            Label_studyConputer.Text = baseInformationALL.StudyConputer;
            Label_studyOther.Text = baseInformationALL.StudyOther;
            Label_studyPerformance.Text = baseInformationALL.StudyPerformance;

            Label_familyAge01.Text = baseInformationALL.FamilyAge01;
            Label_familyJob01.Text = baseInformationALL.FamilyJob01;
            Label_familyName01.Text = baseInformationALL.FamilyName01;
            Label_familyRelationship01.Text = baseInformationALL.FamilyRelationship01;
            Label_familyPlace01.Text = baseInformationALL.FamilyPlace01;
            Label_familyAge02.Text = baseInformationALL.FamilyAge02;
            Label_familyJob02.Text = baseInformationALL.FamilyJob02;
            Label_familyName02.Text = baseInformationALL.FamilyName02;
            Label_familyRelationship02.Text = baseInformationALL.FamilyRelationship02;
            Label_familyPlace02.Text = baseInformationALL.FamilyPlace02;
            Label_familyAge03.Text = baseInformationALL.FamilyAge03;
            Label_familyJob03.Text = baseInformationALL.FamilyJob03;
            Label_familyName03.Text = baseInformationALL.FamilyName03;
            Label_familyRelationship03.Text = baseInformationALL.FamilyRelationship03;
            Label_familyPlace03.Text = baseInformationALL.FamilyPlace03;
        }
    }
}