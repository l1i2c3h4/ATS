<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recruit.aspx.cs" Inherits="ATS.ATSUI.Recruit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>申请求职申请页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 引入 Bootstrap -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
</head>
<body>
    <div style="margin: 0 auto;">
        <br />
        <br />
        <br />
        <div class="form-group">
            <div class="col-md-12">
                <a class="btn btn-primary btn-lg btn-block" href="Apply.aspx">应聘申请</a>
                <br />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <a class="btn btn-info btn-lg btn-block" href="Search.aspx">应聘查询</a>
            </div>
        </div>
    </div>

</body>
</html>
