<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="ATS.ATSUI.hou.Resume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css" media="print">
        .noprint {
            display: none;
        }

        .a4 {
            margin-left: 10px;
            margin-top: 10px;
            width: 640px;
            font-size: 16px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="noprint">
            <input type="button" value="打印" onclick="window.print();" />
            <input type="button" value="返回" onclick="window.location.href='RenLiHandle.aspx'" />
        </div>

        <div class ="a4">
            123
        </div>
    </form>
</body>
</html>
