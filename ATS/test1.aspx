<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="ATS.text1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="vs_targetSchema" content="#">
    <title>���Դ�ӡ����ҳ</title>
    <meta http-equiv="Content-Type" content="text/html;   charset=gb2312">
    <!--media=print   ������Կ����ڴ�ӡʱ��Ч-->
    �ϱ߰�ť�ڴ�ӡ��ʱ�򲻳���
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
            <input type="button" value="��ӡ" onclick="document.all.WebBrowser.ExecWB(6, 1)">
            <input type="button" value="ֱ�Ӵ�ӡ" onclick="document.all.WebBrowser.ExecWB(6, 6)">
            <input type="button" value="ҳ������" onclick="document.all.WebBrowser.ExecWB(8, 1)">
            <input type="button" value="��ӡԤ��" onclick="document.all.WebBrowser.ExecWB(7, 1)">
            <br />
        </p>
        <hr align="center" width="90%" size="1" noshade>
    </center>
    <table width="90%" border="0" align="center" cellpadding="2" cellspacing="0" class="tabp">
        <tr>
            <td colspan="3" class="tdp">��1ҳ
            </td>
            <tr>
                <td colspan="3" class="tdp">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="50%" class="tdp">
                                <p>
                                    �������
                                </p>
                                <p>
                                    ��һҳ��������
                                </p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    <hr align="center" width="90%" size="1" noshade class="NOPRINT">   
    <!--��ҳ-->
    <div class="PageNext">
    </div>
    <table width="90%" border="0" align="center" cellpadding="2" cellspacing="0" class="tabp">
        <tr>
            <td class="tdp">��2ҳ
            </td>
        </tr>
        <tr>
            <td class="tdp">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="50%" class="tdp">
                            <p>
                                �������
                            </p>
                            <p>
                                �ڶ�ҳ��������
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
            <td class="tdp">��3ҳ
            </td>
        </tr>
        <tr>
            <td class="tdp">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="50%" class="tdp">
                            <p>
                                �������
                            </p>
                            <p>
                                ����ҳ��������
                            </p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
