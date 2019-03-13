<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job.aspx.cs" Inherits="ATS.ATSUI.job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <link href="../css/resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet" />
    <link href="../css/resources/css/axure_rp_page.css" type="text/css" rel="stylesheet" />
    <link href="../css/data/styles.css" type="text/css" rel="stylesheet" />
    <link href="../css/files/求职岗位管理/styles.css" type="text/css" rel="stylesheet" />
    <script src="../css/resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="../css/resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="../css/resources/scripts/prototypePre.js"></script>
    <script src="../css/data/document.js"></script>
    <script src="../css/resources/scripts/prototypePost.js"></script>
    <script src="../css/files/求职岗位管理/data.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function () { return '../css/resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function () { return '../css/resources/Other.html'; };
        $axure.utils.getReloadPath = function () { return '../css/resources/reload.html'; };
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="u270" class="text ">
            <asp:Label ID="Label1" runat="server" Text="求职岗位" Height="21px" Width="100px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Name" runat="server" Height="21px" Width="190px"></asp:TextBox>
                    &nbsp;<asp:Button ID="Button_zengjia" runat="server" Height="27px" Text="增加" Width="70px" />
&nbsp;<br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="当前求职岗位" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
            <asp:Button ID="Button_chaxun" runat="server" Height="26px" Text="查询" Width="71px" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="worker" HeaderText="岗位" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
&nbsp;
        </div>
    </form>
</body>
</html>
