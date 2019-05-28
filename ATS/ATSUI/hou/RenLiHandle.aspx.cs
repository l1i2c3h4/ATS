using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATS.ATSBLL;

namespace ATS.ATSUI.hou
{
    public partial class RenLiHandle : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        /// <summary>
        /// 查询信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_TimeSearch_Click(object sender, EventArgs e)
        {
            if (Request["datetimeStart"].ToString() != "" && Request["datetimeEnd"].ToString() != "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "edit", "display('div2');", true);
                string datetimeStart = Request["datetimeStart"];
                string datetimeEnd = Request["datetimeEnd"];
                ViewState["datetimeStart"] = datetimeStart;
                ViewState["datetimeEnd"] = datetimeEnd;
                ViewState["firstChoice"] = "";
                ViewState["secondChoice"] = "";
                GridView_Search.DataSource = BaseInformationBLL.SearchView(datetimeStart, datetimeEnd, null, null, null, null);
                GridView_Search.DataBind();
            }
        }

        protected void GridView_Search_Sorting(object sender, GridViewSortEventArgs e)
        {
            GridView_Search.EditIndex = -1;
            if (ViewState["sortColumn"] == null)
            {

                ViewState["sortColumn"] = e.SortExpression.ToString();
                ViewState["sortDirection"] = "ASC";

            }
            else
            {
                if (ViewState["sortDirection"].ToString() == "ASC")
                {
                    ViewState["sortDirection"] = "DESC";
                }
                else
                {
                    ViewState["sortDirection"] = "ASC";
                }

            }
            string sort = ViewState["sortDirection"].ToString();
            bindGrid(e.SortExpression, sort);
        }

        private void bindGrid(string sortField, string sort)
        {
            string datetimeStart = ViewState["datetimeStart"].ToString();
            string datetimeEnd = ViewState["datetimeEnd"].ToString();
            string firstChoice = ViewState["firstChoice"].ToString();
            string secondChoice = ViewState["secondChoice"].ToString();
            GridView_Search.DataSource = BaseInformationBLL.SearchView(datetimeStart, datetimeEnd, firstChoice, secondChoice, sortField, sort);
            GridView_Search.DataBind();
        }

        /// <summary>
        /// 删除多余求职简历
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView_Search_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string key = e.Keys[0].ToString();
            BaseInformationBLL.deletBaseInformation(key);
            bindGrid(null, null);
        }

        protected void GridView_Search_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView_Search.EditIndex = -1;
            bindGrid(null, null);
        }

        protected void GridView_Search_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView_Search.EditIndex = e.NewEditIndex;
            bindGrid(null, null);
        }

        protected void GridView_Search_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string key = e.Keys[0].ToString();
            string resume = e.NewValues["Resume"].ToString();
            string interview = e.NewValues["Interview"].ToString();
            HandleBLL.UpdataHandle(key, interview , resume);
            GridView_Search.EditIndex = -1;
            bindGrid(null, null);
        }

        protected void btn_dayin_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "gb2312";
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            Response.AppendHeader("content-disposition", "attachment;filename=\"" + System.Web.HttpUtility.UrlEncode("数据导出", System.Text.Encoding.UTF8) + ".xls\"");
            Response.ContentType = "Application/ms-excel";
            System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);

            ClearControls(GridView_Search);
            this.GridView_Search.RenderControl(oHtmlTextWriter);
            Response.Output.Write(oStringWriter.ToString());
            Response.Flush();
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            // Confirms that an HtmlForm control is rendered for

            //为了保险期间还可以在这里加入判断条件防止HTML中已经存在该ID
        }

        private void ClearControls(Control control)
        {
            for (int i = control.Controls.Count - 1; i >= 0; i--)
            {
                ClearControls(control.Controls[i]);
            }

            if (!(control is TableCell))
            {
                if (control.GetType().GetProperty("SelectedItem") != null)
                {
                    LiteralControl literal = new LiteralControl();
                    control.Parent.Controls.Add(literal);
                    try
                    {
                        literal.Text = (string)control.GetType().GetProperty("SelectedItem").GetValue(control, null);
                    }
                    catch
                    {
                    }
                    control.Parent.Controls.Remove(control);
                }
                else if (control.GetType().GetProperty("Text") != null)
                {
                    LiteralControl literal = new LiteralControl();
                    control.Parent.Controls.Add(literal);
                    literal.Text = (string)control.GetType().GetProperty("Text").GetValue(control, null);
                    control.Parent.Controls.Remove(control);
                }
            }
            return;
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "edit", "display('div2');", true);
            ViewState["firstChoice"] = TextBox_firstChoice.Text;
            ViewState["secondChoice"] = TextBox_secondChoice.Text;

            string datetimeStart = ViewState["datetimeStart"].ToString();
            string datetimeEnd = ViewState["datetimeEnd"].ToString();
            string firstChoice = ViewState["firstChoice"].ToString();
            string secondChoice = ViewState["secondChoice"].ToString();
            GridView_Search.DataSource = BaseInformationBLL.SearchView(datetimeStart, datetimeEnd, firstChoice, secondChoice, null, null);
            GridView_Search.DataBind();
        }

        
    }
}