using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATS.ATSBLL;

namespace ATS.ATSUI
{
    public partial class Job : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            GridView1.DataSource = JobBLL.GetBynull();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string key = e.Keys[0].ToString();
            JobBLL.DeletedJob(key);
            BindGrid();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //只有数据行才有绑定数据
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //由于是链接按钮所以声明一个链接按钮，根据实际情况变动
                LinkButton lnkBtFalg = e.Row.Cells[1].Controls[0] as LinkButton;
                lnkBtFalg.Attributes.Add("onclick", "javascrip:return confirm('您真要的删除吗!')");
            }           
        }

        protected void Button_chaxun_Click(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void Button_zengjia_Click(object sender, EventArgs e)
        {
            string job = "";
            if (TextBox_Name.Text != null)
                job = TextBox_Name.Text;
            JobBLL.AddJob(job);
            BindGrid();
        }
    }
}