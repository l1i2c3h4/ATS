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
            <h2>&nbsp; &nbsp; 中国南方航空股份有限公司劳务工社会招聘应聘申请表 </h2>
            <br />
            <h3>基本信息</h3>
            <table width="658" height="233" border="1">
                <tbody>
                    <tr>
                        <th width="84" height="21">姓名 </th>
                        <td width="225" style="text-align: center">
                            <asp:Label ID="Label_Name" runat="server" Text=""></asp:Label>

                        </td>
                        <th width="94">身份证号码 </th>
                        <td width="227" style="text-align: center">
                            <asp:Label ID="Label_IDCard" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="21">性别 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_gender" runat="server" Text=""></asp:Label></td>
                        <th>出生日期</th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_dateOfBirth" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="21">民族 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_nativePlace" runat="server" Text=""></asp:Label></td>
                        <th>婚姻状况 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_maritalStatus" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="21">政治面貌 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_politicalStatus" runat="server" Text=""></asp:Label></td>
                        <th>学历 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_educationalBackgroup" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="21">身高 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_heirht" runat="server" Text=""></asp:Label></td>
                        <th>体重 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_weight" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="21">电子邮箱 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_Email" runat="server" Text=""></asp:Label></td>
                        <th>联系电话 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_phone" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="42">是否患有传染性疾病</th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_communicableDisease" runat="server" Text=""></asp:Label></td>
                        <th>是否色盲或色弱 </th>
                        <td style="text-align: center">
                            <asp:Label ID="Label_achromatopsia" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="45">现住址 </th>
                        <td colspan="3" style="text-align: center">
                            <asp:Label ID="Label_address" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="45">预计可到岗时间 </th>
                        <td colspan="3" style="text-align: center">
                            <asp:Label ID="Label_EstimatedTime" runat="server" Text=""></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <br />
            <h3>应聘情况</h3>
            <table width="657" height="124" border="1">
                <tbody>
                    <tr>
                        <th width="145" height="32" scope="row">第一志愿应聘岗位 </th>
                        <td width="475">
                            <asp:Label ID="Label_firstChoice" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="36" scope="row">第二志愿应聘岗位</th>
                        <td>
                            <asp:Label ID="Label_secondChoice" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="36" scope="row">是否服从调剂 </th>
                        <td>
                            <asp:Label ID="Label_adjust" runat="server" Text=""></asp:Label></td>
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
                        <td>
                            <asp:Label ID="Label_studyBeginTime01" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyEndTime01" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyPlace01" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyMajor01" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label_studyBeginTime02" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyEndTime02" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyPlace02" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyMajor02" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label_studyBeginTime03" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyEndTime03" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyPlace03" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_studyMajor03" runat="server" Text=""></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table width="655" height="332" border="1">
                <tbody>
                    <tr>
                        <th width="136" height="54" scope="row">英语等级 </th>
                        <td width="322">
                            <asp:Label ID="Label_studyEnglish" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="62" scope="row">计算机等级证书 </th>
                        <td>
                            <asp:Label ID="Label_studyConputer" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="95" scope="row">其他证书和特长 </th>
                        <td>
                            <asp:Label ID="Label_studyOther" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <th height="90" scope="row">在校奖惩情况 </th>
                        <td>
                            <asp:Label ID="Label_studyPerformance" runat="server" Text=""></asp:Label></td>
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
                        <td>
                            <asp:Label ID="Label_workBeginTime01" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workEndTime01" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workPlace01" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workJob01" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label_workBeginTime02" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workEndTime02" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workPlace02" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workJob02" runat="server" Text=""></asp:Label></td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label_workBeginTime03" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workEndTime03" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workPlace03" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="Label_workJob03" runat="server" Text=""></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <br>

            <table width="655" height="87" border="1">
                <tbody>
                    <tr>
                        <th width="136" scope="row">工作奖惩情况</th>
                        <td width="503"><asp:Label ID="Label_workPerformance" runat="server" Text=""></asp:Label></td>
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
                        <td><asp:Label ID="Label_familyRelationship01" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyName01" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyAge01" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyPlace01" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyJob01" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label_familyRelationship02" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyName02" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyAge02" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyPlace02" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyJob02" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label_familyRelationship03" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyName03" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyAge03" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyPlace03" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="Label_familyJob03" runat="server" Text=""></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
