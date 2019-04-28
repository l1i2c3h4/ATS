using ATS.ATSBLL;
using ATS.ATSEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ATS.ATSUI.qian
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Search_Click(object sender, EventArgs e)
        {
            
            Handle handle = HandleBLL.SearchAll(TextBox_searchIDCard.Text);
            BaseInformation baseInformation = BaseInformationBLL.SearchAll(TextBox_searchIDCard.Text);
            if (baseInformation == null)
            {
                Label_Information.Visible = true;
                Table_chaxun.Visible = false;
                Label_Information.Text = "没有投递简历信息";
            }
            else
            {
                Table_chaxun.Visible = true;
                Label_Information.Visible = false;
                Label_Name.Text = baseInformation.Name;
                Label_IDNumber.Text = baseInformation.IDNumber.ToString();
                Label_First.Text = baseInformation.FirstChoice.ToString();
                Label_Second.Text = baseInformation.SecondChoice.ToString();
                Label_resume.Text = handle.Resume.ToString();
                Label_interview.Text = handle.Interview.ToString();
            }
           
        }
    }
}