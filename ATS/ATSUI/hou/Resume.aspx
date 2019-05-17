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
            <input type="button" value="返回" onclick="window.location.href = 'RenLiHandle.aspx'" />
        </div>

        <div class="a4">
            <br />
            <h2> &nbsp; &nbsp; 中国南方航空股份有限公司劳务工社会招聘应聘申请表 </h2>
            <br />
            <h3>基本信息</h3>
            <table width="658" height="233" border="1">
                <tbody>
                    <tr>
                        <th width="84" height="21">姓名 </th>
                        <td width="225">&nbsp;</td>
                        <th width="94">身份证号码 </th>
                        <td width="227">&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="21">性别 </th>
                        <td>&nbsp;</td>
                        <th>出生日期</th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="21">民族 </th>
                        <td>&nbsp;</td>
                        <th>婚姻状况 </th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="21">政治面貌 </th>
                        <td>&nbsp;</td>
                        <th>籍贯 </th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="21">身高 </th>
                        <td>&nbsp;</td>
                        <th>体重 </th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="21">电子邮箱 </th>
                        <td>&nbsp;</td>
                        <th>联系电话 </th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="42">是否患有传染性疾病</th>
                        <td>&nbsp;</td>
                        <th>是否色盲或色弱 </th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="45">现住址 </th>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                </tbody>
            </table>
            <br />
            <h3>应聘情况</h3>
            <table width="657" height="124" border="1">
                <tbody>
                    <tr>
                        <th width="145" height="32" scope="row">第一志愿应聘岗位 </th>
                        <td width="475">&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="36" scope="row">第二志愿应聘岗位</th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="36" scope="row">是否服从调剂 </th>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
            </table>
            <br />
            <h3>教育背景</h3>
            <table width="654" height="174" border="1">
                <tbody>
                    <tr>
                        <th width="103" scope="col">起始时间 </th>
                        <th width="92" scope="col">截止时间 </th>
                        <th width="179" scope="col">就读学校 </th>
                        <th width="94" scope="col">专业 </th>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table width="655" height="332" border="1">
                <tbody>
                    <tr>
                        <th width="136" height="54" scope="row">英语等级 </th>
                        <td width="322">&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="62" scope="row">计算机等级证书 </th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="95" scope="row">其他证书和特长 </th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th height="90" scope="row">在校奖惩情况 </th>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
            </table>
            <h3>工作经历</h3>
            <table width="655" height="166" border="1">
                <tbody>
                    <tr>
                        <th width="125" scope="col">起始时间 </th>
                        <th width="122" scope="col">截止时间 </th>
                        <th width="228" scope="col">工作单位 </th>
                        <th width="112" scope="col">岗位 </th>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
            </table>
            <br>

            <table width="655" height="87" border="1">
                <tbody>
                    <tr>
                        <th width="136" scope="row">工作奖惩情况</th>
                        <td width="503">&nbsp;</td>
                    </tr>
                </tbody>
            </table>
            <h3>家庭信息</h3>
            <table width="656" height="169" border="1">
                <tbody>
                    <tr>
                        <th width="61" scope="col">关系</th>
                        <th width="80" scope="col">姓名</th>
                        <th width="67" scope="col">年龄</th>
                        <th width="288" scope="col">工作单位</th>
                        <th width="126" scope="col">职务</th>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
