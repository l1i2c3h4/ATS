<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="ATS.test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 引入 Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->


    <!--引入css-->

    <!--引入JavaScript-->
    <script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.4.2/css/buttons.dataTables.css" />

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.4.2/js/dataTables.buttons.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.4.2/js/buttons.flash.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.4.2/js/buttons.html5.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.4.2/js/buttons.print.js"></script>


    <script>
        <!--第三步：初始化Datatables-->
    $(document).ready(function () {
        var table = $('#table_id_example').DataTable({
            language: {
               sProcessing: "处理中...",
                sLengthMenu: "显示 _MENU_ 项结果",
                sZeroRecords: "没有匹配结果",
                sInfo: "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                sInfoEmpty: "显示第 0 至 0 项结果，共 0 项",
                sInfoFiltered: "(由 _MAX_ 项结果过滤)",
                sInfoPostFix: "",
                sSearch: "搜索:",
                sUrl: "",
                sLoadingRecords: "载入中...",
                sInfoThousands: ",",
                oPaginate: {
                    sFirst: "首页",
                    sPrevious: "上页",
                    sNext: "下页",
                    sLast: "末页"
                },
                oAria: {
                    sSortAscending: ": 以升序排列此列",
                    sSortDescending: ": 以降序排列此列"
                }

            },
            "info": true,
            "paging": true,
            "processing": false,
            "searching": true,
            //使用对象数组，一定要配置columns，告诉 DataTables 每列对应的属性
            //data 这里是固定不变的，name，position，salary，office 为你数据里对应的属性
            
          

        });
    });

    </script>

</head>
<body>
    <form>
        <table id="table_id_example" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>姓名</th>
                    <th>岗位</th>
                    <th>工资</th>
                    <th>部门</th>
                </tr>
                 <tr>
                    <td>姓名</td>
                    <td>岗位</td>
                    <td>工资</td>
                    <td>部门</td>
                </tr>
                 <tr>
                    <td>姓名</td>
                    <td>岗位</td>
                    <td>工资</td>
                    <td>部门</td>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>


    </form>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
