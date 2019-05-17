<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="ATS.text1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="vs_targetSchema" content="#">
    <title>测试打印及分页</title>
    <meta http-equiv="Content-Type" content="text/html;   charset=gb2312">
    <!--media=print   这个属性可以在打印时有效-->
    上边按钮在打印的时候不出现
    <mce:style media="print"><!--
        .Noprint
        {
            display: none;
        }
        .PageNext
        {
            page-break-after: always;
        }
    
--></mce:style>
    <style media="print" mce_bogus="1">
        .Noprint {
            display: none;
        }

        .PageNext {
            page-break-after: always;
        }
    </style>
</head>
<body>
    <center class="Noprint">
        <p>
            <object id="WebBrowser" classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2" height="0"
                width="0">
            </object>
            <input type="button" value="打印" onclick="document.all.WebBrowser.ExecWB(6, 1)">
            <input type="button" value="直接打印" onclick="document.all.WebBrowser.ExecWB(6, 6)">
            <input type="button" value="页面设置" onclick="document.all.WebBrowser.ExecWB(8, 1)">
            <input type="button" value="打印预览" onclick="document.all.WebBrowser.ExecWB(7, 1)">
            <br />
        </p>
        <hr align="center" width="90%" size="1" noshade>
    </center>
    <table width="90%" border="0" align="center" cellpadding="2" cellspacing="0" class="tabp">
        <tr>
            <td colspan="3" class="tdp">第1页
            </td>
            <tr>
                <td colspan="3" class="tdp">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="50%" class="tdp">
                                <p>
                                    报表标题
                                </p>
                                <p>
                                    第一页报表内容
                                </p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    <hr align="center" width="90%" size="1" noshade class="NOPRINT">   
    <!--分页-->
    <div class="PageNext">
    </div>
    <table width="90%" border="0" align="center" cellpadding="2" cellspacing="0" class="tabp">
        <tr>
            <td class="tdp">第2页
            </td>
        </tr>
        <tr>
            <td class="tdp">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="50%" class="tdp">
                            <p>
                                报表标题
                            </p>
                            <p>
                                第二页报表内容
                            </p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <hr align="center" width="90%" size="1" noshade class="NOPRINT">
    <div class="PageNext">
    </div>
    <table width="90%" border="0" align="center" cellpadding="2" cellspacing="0" class="tabp">
        <tr>
            <td class="tdp">第3页
            </td>
        </tr>
        <tr>
            <td class="tdp">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="50%" class="tdp">
                            <p>
                                报表标题
                            </p>
                            <p>
                                第三页报表内容
                            </p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
