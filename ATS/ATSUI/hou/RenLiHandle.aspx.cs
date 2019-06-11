using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
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
        /// 根据应聘时间查询信息
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

        /// <summary>
        /// 表格升降排序
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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

        /// <summary>
        /// 辅助类数据绑定
        /// </summary>
        /// <param name="sortField"></param>
        /// <param name="sort"></param>
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

        /// <summary>
        /// 取消处理信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView_Search_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView_Search.EditIndex = -1;
            bindGrid(null, null);
        }

        /// <summary>
        /// 编辑处理信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView_Search_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView_Search.EditIndex = e.NewEditIndex;
            bindGrid(null, null);
        }

        /// <summary>
        /// 更新处理信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView_Search_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string key = e.Keys[0].ToString();
            string resume = e.NewValues["Resume"].ToString();
            string interview = e.NewValues["Interview"].ToString();
            HandleBLL.UpdataHandle(key, interview, resume);
            GridView_Search.EditIndex = -1;
            bindGrid(null, null);
        }

        protected void btn_dayin_Click(object sender, EventArgs e)
        {
            GridView_dayin1.DataSource = CreateDataSource();
            GridView_dayin1.DataBind();

            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "gb2312";
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            Response.AppendHeader("content-disposition", "attachment;filename=FileName.xls");
            Response.ContentType = "Application/ms-excel";

            this.EnableViewState = false;
            System.Globalization.CultureInfo myCItrad = new System.Globalization.CultureInfo("ZH-CN", true);
            System.IO.StringWriter oStringWriter = new System.IO.StringWriter(myCItrad);
            System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);

            //ClearControls(GridView_Search);
            //this.GridView_Search.RenderControl(oHtmlTextWriter);
            //ClearControls(GridView_dayin1);
            this.GridView_dayin1.RenderControl(oHtmlTextWriter);
            Response.Write(oStringWriter.ToString());
            Response.Flush();
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);不检查是否包含在HTMLFORM中
        }

        protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //将整个datagrid都格式化为文本格式
                int datagridcolumns = 65; //datagrid显示列的数量,
                //获取显示列的数量可以从数据源那里进行获取
                //比如绑定DataGrid的数据源是DataSet                   
                //datagrid显示列的数量 = ds.tables[0].Columns.Count;  
                for (int i = 0; i < datagridcolumns; i++)
                {
                    e.Item.Cells[i].Attributes.Add("style", "vnd.ms-excel.numberformat:@");
                }

                //对需要格式化的列进行格式化
                //e.Item.Cells[0].Attributes.Add("style", "vnd.ms-excel.numberformat:@");
                //e.Item.Cells[2].Attributes.Add("style", "vnd.ms-excel.numberformat::#,##0.00");
                //e.Item.Cells[3].Attributes.Add("style", "vnd.ms-excel.numberformat:￥#,###.00");          
            }
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

        ICollection CreateDataSource()
        {
            DataTable dt = new DataTable();
            string datetimeStart = ViewState["datetimeStart"].ToString();
            string datetimeEnd = ViewState["datetimeEnd"].ToString();
            string firstChoice = ViewState["firstChoice"].ToString();
            string secondChoice = ViewState["secondChoice"].ToString();
            dt = BaseInformationBLL.SearchView(datetimeStart, datetimeEnd, firstChoice, secondChoice, null, null);
            DataView dv = new DataView(dt);
            return dv;
        }
    }
}