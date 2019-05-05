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
                string datetimeStart = Request["datetimeStart"];
                string datetimeEnd = Request["datetimeEnd"];
                ViewState["datetimeStart"] = datetimeStart;
                ViewState["datetimeEnd"] = datetimeEnd;
                GridView_Search.DataSource = BaseInformationBLL.SearchView(datetimeStart, datetimeEnd, null, null);
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
            GridView_Search.DataSource = BaseInformationBLL.SearchView(datetimeStart, datetimeEnd, sortField, sort);
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
    }
}