using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace ATS
{
    public partial class text3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataGrid1.DataSource = CreateDataSource();
            DataGrid1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "GB2312";
            Response.AppendHeader("Content-Disposition", "attachment;filename=FileName.xls");
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");//设置输出流为简体中文
            Response.ContentType = "application/ms-excel";//设置输出文件类型为excel文件。 
            this.EnableViewState = false;
            System.Globalization.CultureInfo myCItrad = new System.Globalization.CultureInfo("ZH-CN", true);
            System.IO.StringWriter oStringWriter = new System.IO.StringWriter(myCItrad);
            System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
            this.DataGrid1.RenderControl(oHtmlTextWriter);
            Response.Write(oStringWriter.ToString());
            Response.End();
        }

        ICollection CreateDataSource()
        {

            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add(new DataColumn("身份证号码", typeof(string)));
            dt.Columns.Add(new DataColumn("图书单价", typeof(decimal)));
            dt.Columns.Add(new DataColumn("购买数量", typeof(Int32)));
            dt.Columns.Add(new DataColumn("总价格", typeof(decimal)));
            for (int i = 0; i < 30; i++)
            {
                dr = dt.NewRow();

                dr[0] = "123456789123456789";
                dr[1] = 100 * i / 3.0;
                dr[2] = i + 5;
                dr[3] = (decimal)dr[1] * (Int32)dr[2];
                dt.Rows.Add(dr);
            }
            DataView dv = new DataView(dt);
            return dv;
        }

        protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //将整个datagrid都格式化为文本格式
                int datagridcolumns=2; //datagrid显示列的数量,
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
                // e.Item.Cells[3].Attributes.Add("style", "vnd.ms-excel.numberformat:￥#,###.00");          
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataGrid1.DataSource = CreateDataSource();
            DataGrid1.DataBind();
        }
    }
}