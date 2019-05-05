<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="ATS.test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 引入 Bootstrap -->

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <title></title>
    <!-- 引入 Bootstrap -->
</head>
<body>

    <div>

        <span>日期周期</span>

        <input size="5" type="text" id="datetimeStart" readonly class="form_datetime form-control" />

        <span>至 </span>

        <input size="5" type="text" id="datetimeEnd" readonly class="form_datetime form-control" />
    </div>





    <script type="text/javascript" src="bootstrap/js/jquery-1.8.3.min.js" charset="UTF-8"></script>

    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>

    <script type="text/javascript" src="bootstrap/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <script type="text/javascript">
        $("#datetimeStart").datetimepicker({
            format: 'yyyy-mm-dd',
            minView: 'month',
            language: 'zh-CN',
            autoclose: true,
        }).on("click", function () {
            $("#datetimeStart").datetimepicker("setEndDate", $("#datetimeEnd").val())
        });
        $("#datetimeEnd").datetimepicker({
            format: 'yyyy-mm-dd',
            minView: 'month',
            language: 'zh-CN',
            autoclose: true,
            startDate: new Date()
        }).on("click", function () {
            $("#datetimeEnd").datetimepicker("setStartDate", $("#datetimeStart").val())
        });
    </script>

</body>
</html>
