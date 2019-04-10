using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATSEntity;

namespace ATS.ATSUI
{
    public partial class Apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DropDownList_FirstChoice.DataSource = ATSBLL.JobBLL.GetBynull();
                DropDownList_FirstChoice.DataTextField = "worker";
                DropDownList_FirstChoice.DataBind();
                DropDownList_SecondChoice.DataSource = ATSBLL.JobBLL.GetBynull();
                DropDownList_SecondChoice.DataTextField = "worker";
                DropDownList_SecondChoice.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BaseInformation b = new BaseInformation();
            Family f = new Family();
            Job j = new Job();
            Study s = new Study();
            Work w = new Work();

            b.Name = TextBox_Name.Text;
            b.IDCare = TextBox_IDCard.Text;
            b.Gender = DropDownList_Gender.Text;
            b.DateOfBirth = TextBox_DateOfBirth.Text;
            b.MaritalStatus = DropDownList_MaritalStatus.Text;
            b.PoliticalStatus = DropDownList_PoliticalStatus.Text;
            b.NativePlace = DropDownList_NativePlace.Text;
            b.Height = DropDownList_Height.Text;
            b.Weight = TextBox_Weight.Text;
            b.CommunicableDisease = DropDownList_CommunicableDisease.Text;
            b.Achromatopsia = DropDownList_Achromatopsia.Text;
            b.EstimatedTime = DropDownList_EstimatedTime.Text;
            b.Email = TextBox_Email.Text;
            b.Phone = TextBox_phone.Text;
            b.Address = TextBox_Address.Text;
            b.FirstChoice = DropDownList_FirstChoice.Text;
            b.SecondChoice = DropDownList_SecondChoice.Text;
            b.Adjust = DropDownList_Adjust.Text;

            w.WorkBeginTime01 = TextBox_workBeginTime01.Text;
            w.WorkBeginTime02 = TextBox_workBeginTime02.Text;
            w.WorkBeginTime03 = TextBox_workBeginTime03.Text;
            w.WorkEndTime01 = TextBox_workEndTime01.Text;
            w.WorkEndTime02 = TextBox_workEndTime02.Text;
            w.WorkEndTime03 = TextBox_workEndTime03.Text;
            w.WorkPlace01 = TextBox_workPlace01.Text;
            w.WorkPlace02 = TextBox_workPlace02.Text;
            w.WorkPlace03 = TextBox_workPlace03.Text;
            w.WorkJob01 = TextBox_workJob01.Text;
            w.WorkJob02 = TextBox_workJob02.Text;
            w.WorkJob03 = TextBox_workJob03.Text;
            w.WorkPerformance = TextBox_workPerformance.Text;

            s.StudyBeginTime01 = TextBox_studyBeginTime01.Text;
            s.StudyBeginTime02 = TextBox_studyBeginTime02.Text;
            s.StudyBeginTime03 = TextBox_studyBeginTime03.Text;
            s.StudyEndTime01 = TextBox_studyEndTime01.Text;
            s.StudyEndTime02 = TextBox_studyEndTime02.Text;
            s.StudyEndTime03 = TextBox_studyEndTime03.Text;
            s.StudyPlace01 = TextBox_studyPlace01.Text;
            s.StudyPlace02 = TextBox_studyPlace02.Text;
            s.StudyPlace03 = TextBox_studyPlace03.Text;
            s.StudyMajor01 = TextBox_studyMajor01.Text;
            s.StudyMajor02 = TextBox_studyMajor02.Text;
            s.StudyMajor03 = TextBox_studyMajor03.Text;
            s.StudyEnglish = DropDownList_StudyEnglish.Text;
            s.StudyConputer = DropDownList_studyConputer.Text;
            s.StudyOther = TextBox_studyOther.Text;
            s.StudyPerformance = TextBox_studyPerformance.Text;

            f.FamilyRelationship01 = TextBox_familyRelationship01.Text;
            f.FamilyRelationship02 = TextBox_familyRelationship02.Text;
            f.FamilyRelationship03 = TextBox_familyRelationship03.Text;
            f.FamilyName01 = TextBox_familyName01.Text;
            f.FamilyName02 = TextBox_familyName02.Text;
            f.FamilyName03 = TextBox_familyName03.Text;
            f.FamilyAge01 = TextBox_familyAge01.Text;
            f.FamilyAge02 = TextBox_familyAge02.Text;
            f.FamilyAge03 = TextBox_familyAge03.Text;
            f.FamilyPlace01 = TextBox_familyPlace01.Text;
            f.FamilyPlace02 = TextBox_familyPlace02.Text;
            f.FamilyPlace03 = TextBox_familyPlace03.Text;
            f.FamilyJob01 = TextBox_familyJob01.Text;
            f.FamilyJob02 = TextBox_familyJob02.Text;
            f.FamilyJob03 = TextBox_familyJob03.Text;

            int i = 0;
            i = ATSBLL.BaseInformationBLL.AddBaseInformation(b,f,s,w);
            //弹出对话框
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('" + "应聘申请提交成功,您的应聘编号为" + i+ "');</script>");
        }
    }
}