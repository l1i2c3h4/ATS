<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ATS.ATSUI.qian.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>应聘流程查询页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 引入 Bootstrap -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server" role="form">
       <div class="form-group">
        <div class="col-md-12">
            <h2 style="font-family:'KaiTi','Times New Roman', Times, serif">欢迎查询应聘状态</h2>
            <p>请输入您的身份证号查询：</p>
            <label>应聘编号</label>
            <asp:TextBox ID="TextBox_searchIDNumber" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-12">
            <label>身份证号</label>
            <asp:TextBox ID="TextBox_searchIDCard" runat="server"></asp:TextBox>
        </div>
    </div>
        
    <div class="form-group">
        <div class="col-md-12">
            <a class="btn btn-warning" href="Recruit.aspx">返回主页</a>
            <asp:Button ID="Button_Search" runat="server" class="btn btn-info" Text="查询"/>
            <hr />
        </div>
    </div>
    </form>
</body>
</html>
