
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="ATS.ATSUI.Apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>简历填写页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 引入 Bootstrap -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
    <style type="text/css">
        table {
            font-family: "Arial","SimSun","Microsoft YaHei",sans-serif;
            font-size: 12px;
            color: #333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
        }

            table th {
                border-width: 1px;
                padding: 10px;
                border-style: solid;
                border-color: #666666;
                background-color: #dedede;
            }

            table td {
                border-width: 1px;
                border-style: solid;
                border-color: #666666;
                background-color: #ffffff;
            }
    </style>
</head>

<body>
    <form id="form1" runat="server" role="form">
        <div class="form-group">
            <div class="col-md-12">
                <h3><b>第一步：填写基本信息</b></h3>
            </div>
        </div>
        <div class="container-fluid">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <h4>
                            <label class="label label-info">填写说明</label></h4>
                        <ol>
                            <li>*号项为必填项目；</li>
                            <li>出生日期会自动从身份证号获取，请填写准确的身份证号；</li>
                            <li>所有联系方式均填写手机号码。</li>
                        </ol>
                    </div>
                    <span style="color: red; font-size: medium">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </span>
                </div>



                <h3><b>基本情况</b></h3>
                <div class="form-group">
                    <label class="control-label col-md-2" for="Name">姓名</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" ControlToValidate="TextBox_Name" runat="server" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
                    </span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Name" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Gender">性别</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Gender" ControlToValidate="DropDownList_Gender" runat="server" ErrorMessage="性别不能为空"></asp:RequiredFieldValidator></span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_Gender" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Text="男" Value="男"></asp:ListItem>
                            <asp:ListItem Text="女" Value="女"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="NativePlace">民族</label><span style="color: red; font-size: large;"> * </span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_NativePlace" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="汉族" Value="汉族" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="阿昌族" Value="阿昌族"></asp:ListItem>
                            <asp:ListItem Text="白族" Value="白族"></asp:ListItem>
                            <asp:ListItem Text="保安族" Value="保安族"></asp:ListItem>
                            <asp:ListItem Text="布朗族" Value="布朗族"></asp:ListItem>
                            <asp:ListItem Text="布依族" Value="布依族"></asp:ListItem>
                            <asp:ListItem Text="朝鲜族" Value="朝鲜族"></asp:ListItem>
                            <asp:ListItem Text="达斡尔族" Value="达斡尔族"></asp:ListItem>
                            <asp:ListItem Text="傣族" Value="傣族"></asp:ListItem>
                            <asp:ListItem Text="德昂族" Value="德昂族"></asp:ListItem>
                            <asp:ListItem Text="侗族" Value="侗族"></asp:ListItem>
                            <asp:ListItem Text="东乡族" Value="东乡族"></asp:ListItem>
                            <asp:ListItem Text="独龙族" Value="独龙族"></asp:ListItem>
                            <asp:ListItem Text="鄂伦春族" Value="鄂伦春族"></asp:ListItem>
                            <asp:ListItem Text="俄罗斯族" Value="俄罗斯族"></asp:ListItem>
                            <asp:ListItem Text="鄂温克族" Value="鄂温克族"></asp:ListItem>
                            <asp:ListItem Text="高山族" Value="高山族"></asp:ListItem>
                            <asp:ListItem Text="仡佬族" Value="仡佬族"></asp:ListItem>
                            <asp:ListItem Text="哈尼族" Value="哈尼族"></asp:ListItem>
                            <asp:ListItem Text="哈萨克族" Value="哈萨克族"></asp:ListItem>
                            <asp:ListItem Text="赫哲族" Value="赫哲族"></asp:ListItem>
                            <asp:ListItem Text="回族" Value="回族"></asp:ListItem>
                            <asp:ListItem Text="基诺族" Value="基诺族"></asp:ListItem>
                            <asp:ListItem Text="京族" Value="京族"></asp:ListItem>
                            <asp:ListItem Text="景颇族" Value="景颇族"></asp:ListItem>
                            <asp:ListItem Text="柯尔克孜族" Value="柯尔克孜族"></asp:ListItem>
                            <asp:ListItem Text="拉祜族" Value="拉祜族"></asp:ListItem>
                            <asp:ListItem Text="黎族" Value="黎族"></asp:ListItem>
                            <asp:ListItem Text="傈僳族" Value="傈僳族"></asp:ListItem>
                            <asp:ListItem Text="珞巴族" Value="珞巴族"></asp:ListItem>
                            <asp:ListItem Text="满族" Value="满族"></asp:ListItem>
                            <asp:ListItem Text="毛南族" Value="毛南族"></asp:ListItem>
                            <asp:ListItem Text="门巴族" Value="门巴族"></asp:ListItem>
                            <asp:ListItem Text="蒙古族" Value="蒙古族"></asp:ListItem>
                            <asp:ListItem Text="苗族" Value="苗族"></asp:ListItem>
                            <asp:ListItem Text="仫佬族" Value="仫佬族"></asp:ListItem>
                            <asp:ListItem Text="纳西族" Value="纳西族"></asp:ListItem>
                            <asp:ListItem Text="怒族" Value="怒族"></asp:ListItem>
                            <asp:ListItem Text="普米族" Value="普米族"></asp:ListItem>
                            <asp:ListItem Text="羌族" Value="羌族"></asp:ListItem>
                            <asp:ListItem Text="撒拉族" Value="撒拉族"></asp:ListItem>
                            <asp:ListItem Text="畲族" Value="畲族"></asp:ListItem>
                            <asp:ListItem Text="水族" Value="水族"></asp:ListItem>
                            <asp:ListItem Text="塔吉克族" Value="塔吉克族"></asp:ListItem>
                            <asp:ListItem Text="塔塔尔族" Value="塔塔尔族"></asp:ListItem>
                            <asp:ListItem Text="土族" Value="土族"></asp:ListItem>
                            <asp:ListItem Text="土家族" Value="土家族"></asp:ListItem>
                            <asp:ListItem Text="佤族" Value="佤族"></asp:ListItem>
                            <asp:ListItem Text="锡伯族" Value="锡伯族"></asp:ListItem>
                            <asp:ListItem Text="乌兹别克族" Value="乌兹别克族"></asp:ListItem>
                            <asp:ListItem Text="瑶族" Value="瑶族"></asp:ListItem>
                            <asp:ListItem Text="彝族" Value="彝族"></asp:ListItem>
                            <asp:ListItem Text="裕固族" Value="裕固族"></asp:ListItem>
                            <asp:ListItem Text="裕固族" Value="裕固族"></asp:ListItem>
                            <asp:ListItem Text="维吾尔族" Value="维吾尔族"></asp:ListItem>
                            <asp:ListItem Text="壮族" Value="壮族"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="IDCard">身份证号</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_IDCard" ControlToValidate="TextBox_IDCard" runat="server" ErrorMessage="身份证号不能为空" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_IDCard" runat="server" ValidationExpression="(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$)" ControlToValidate="TextBox_IDCard" ErrorMessage="请输入正确的身份证号"></asp:RegularExpressionValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_IDCard" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="DateOfBirth">出生日期</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_DateOfBirth" ControlToValidate="TextBox_DateOfBirth" runat="server" ErrorMessage="出生日期不能为空" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_DateOfBirth" runat="server" ValidationExpression="((?!0000)[0-9]{4}-((0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-8])|(0[13-9]|1[0-2])-(29|30)|(0[13578]|1[02])-31)|([0-9]{2}(0[48]|[2468][048]|[13579][26])|(0[48]|[2468][048]|[13579][26])00)-02-29)" ControlToValidate="TextBox_DateOfBirth" Text="请按此格式输入1989-01-01" ErrorMessage="请输入正确的出生日期如1989-01-01"></asp:RegularExpressionValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_DateOfBirth" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="MaritalStatus">婚姻状况</label><span style="color: red; font-size: large;"> * 
                    </span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_MaritalStatus" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="已婚" Value="已婚"></asp:ListItem>
                            <asp:ListItem Text="未婚" Value="未婚" Selected="True"></asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="PoliticalStatus">政治面貌</label><span style="color: red; font-size: large;"> * </span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_PoliticalStatus" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="中共党员" Value="中共党员"></asp:ListItem>
                            <asp:ListItem Text="共青团员" Value="共青团员"></asp:ListItem>
                            <asp:ListItem Text="民主党派或无党派人士" Value="民主党派或无党派人士"></asp:ListItem>
                            <asp:ListItem Text="群众" Value="群众" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="EducationalBackgrounp">学历</label><span style="color: red; font-size: large;"> * </span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_EducationalBackgrounp" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="小学" Value="小学"></asp:ListItem>
                            <asp:ListItem Text="专科" Value="专科"></asp:ListItem>
                            <asp:ListItem Text="本科" Value="本科" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="研究生" Value="研究生"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Height">身高</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_Height" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="190cm以上" Value="190cm以上" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="185-190cm" Value="185-190cm"></asp:ListItem>
                            <asp:ListItem Text="180-185cm" Value="180-185cm"></asp:ListItem>
                            <asp:ListItem Text="175-180cm" Value="175-180cm"></asp:ListItem>
                            <asp:ListItem Text="170-175cm" Value="170-175cm"></asp:ListItem>
                            <asp:ListItem Text="165-170cm" Value="165-170cm"></asp:ListItem>
                            <asp:ListItem Text="160-165cm" Value="160-165cm"></asp:ListItem>
                            <asp:ListItem Text="155-160cm" Value="155-160cm"></asp:ListItem>
                            <asp:ListItem Text="150-155cm" Value="150-155cm"></asp:ListItem>
                            <asp:ListItem Text="150cm以下" Value="150cm以下"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Weight">体重（KG）</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RangeValidator ID="RangeValidator_Weight" runat="server" ErrorMessage="请输入整数的体重值" ControlToValidate="TextBox_Weight" MaximumValue="200" MinimumValue="1" Type="Integer" EnableClientScript="False"></asp:RangeValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Weight" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="NaticePlace">籍贯</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_NaticePlace" ControlToValidate="TextBox_NaticePlace" runat="server" ErrorMessage="籍贯不能为空"></asp:RequiredFieldValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_NaticePlace" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Address">住址</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Address" ControlToValidate="TextBox_Address" runat="server" ErrorMessage="住址不能为空"></asp:RequiredFieldValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Address" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Email">电子邮箱</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Email" ControlToValidate="TextBox_Email" runat="server" ErrorMessage="电子邮件不能为空" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_Email" runat="server" ValidationExpression="^\s*([A-Za-z0-9_-]+(\.\w+)*@(\w+\.)+\w{2,5})\s*$" ControlToValidate="TextBox_Email" ErrorMessage="请输入正确的电子邮件"></asp:RegularExpressionValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Email" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="phone">联系方式</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_phone" ControlToValidate="TextBox_phone" runat="server" ErrorMessage="联系方式不能为空" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_phone" runat="server" ValidationExpression="^1(3|4|5|7|8|9)\d{9}$" ControlToValidate="TextBox_phone" ErrorMessage="请输入正确的手机号"></asp:RegularExpressionValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_phone" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="CommunicableDisease">是否患有传染病</label><span style="color: red; font-size: large;"> * </span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_CommunicableDisease" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="是" Value="是"></asp:ListItem>
                            <asp:ListItem Text="否" Value="否" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Achromatopsia">是否色盲或色弱</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_Achromatopsia" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="是" Value="是"></asp:ListItem>
                            <asp:ListItem Text="否" Value="否" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="EstimatedTime">预计可到岗时间</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_EstimatedTime" ControlToValidate="DropDownList_EstimatedTime" runat="server" ErrorMessage="预计可到岗时间不能为空"></asp:RequiredFieldValidator></span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_EstimatedTime" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Text="随时" Value="随时"></asp:ListItem>
                            <asp:ListItem Text="一周之内" Value="一周之内"></asp:ListItem>
                            <asp:ListItem Text="一个月之内" Value="一个月之内"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="FirstChoice">第一志愿应聘岗位</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_FirstChoice" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="SecondChoice">第二志愿应聘岗位</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_SecondChoice" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Adjust">是否服从调剂</label><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DropDownList_Adjust" runat="server" ErrorMessage="是否服从调剂不能为空"></asp:RequiredFieldValidator></span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_Adjust" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Text="是" Value="是"></asp:ListItem>
                            <asp:ListItem Text="否" Value="否"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>

        <hr />
        <div class="form-group">
            <div class="col-md-12">
                <h3><b>第二步：填写工作经历</b></h3>
            </div>
        </div>
        <div class="container-fluid">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <h4>
                            <label class="label label-info">填写说明</label></h4>
                        <ol>
                            <li>工作经历对应聘非常重要，请如实填写，必要时公司将进行核实；</li>
                            <li>起始和截止时间精确到月份即可，具体格式如“2016-09”；</li>
                            <li>若该条工作经历还未结束，截止时间填写“至今”；</li>
                            <li>请从最近的工作经历开始填写起，且最多填写3条，无工作经历可不填。</li>
                        </ol>
                    </div>
                </div>
                <h3><b>工作经历</b></h3>
                <div class="table-responsive">
                    <table border="1">

                        <tr>
                            <th>起始时间</th>
                            <th>截止时间</th>
                            <th>工作单位</th>
                            <th>岗位</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_workBeginTime01" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_workEndTime01" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_workPlace01" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_workJob01" class="form-control" runat="server"> </asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_workBeginTime02" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_workEndTime02" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_workPlace02" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_workJob02" class="form-control" runat="server"> </asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_workBeginTime03" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_workEndTime03" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_workPlace03" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_workJob03" class="form-control" runat="server"> </asp:TextBox></td>
                        </tr>

                    </table>
                </div>
                <br />
                <h3><b>工作奖惩情况</b></h3>
                <div class="col-md-6 col-md-offset-1">
                    <asp:TextBox ID="TextBox_workPerformance" class="form-control" TextMode="MultiLine" Style="overflow-y: visible" Width="100%" Wrap="true" runat="server"> </asp:TextBox>
                </div>
            </div>
        </div>
        <!-- 第三部 -->
        <hr />
        <div class="form-group">
            <!-- 第三部 -->
            <div class="col-md-12">
                <h3><b>第三步：填写学习经历</b></h3>
            </div>
        </div>
        <div class="container-fluid">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <h4>
                            <label class="label label-info">填写说明</label></h4>
                        <ol>
                            <li>起始和截止时间精确到月份即可，具体格式如“2016-09”；</li>
                            <li>若该条学习经历还未结束，截止时间填写“至今”；</li>
                            <li>学习经历第一行为必填项，请从最近的学习经历开始填写起，至少填写一条，最多填写3条。</li>
                        </ol>
                    </div>
                </div>


                <h3><b>学习经历</b></h3>
                <div class="table-responsive">
                    <table border="1">

                        <tr>
                            <th>起始时间</th>
                            <th>截止时间</th>
                            <th>就读学校</th>
                            <th>专业</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_studyBeginTime01" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_TextBox_studyBeginTime01" ControlToValidate="TextBox_studyBeginTime01" runat="server"  ErrorMessage="必填行学习经历起始时间未填写" Display="None"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyEndTime01" class="form-control" runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_TextBox_studyEndTime01" ControlToValidate="TextBox_studyEndTime01" runat="server"  ErrorMessage="必填行学习经历截止时间未填写" Display="None"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyPlace01" class="form-control" runat="server"> </asp:TextBox></td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_TextBox_studyPlace01" ControlToValidate="TextBox_studyPlace01" runat="server"  ErrorMessage="必填行学习经历就读学校未填写" Display="None"></asp:RequiredFieldValidator>

                            <td>
                                <asp:TextBox ID="TextBox_studyMajor01" class="form-control" runat="server"> </asp:TextBox></td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator_TextBox_studyMajor01" ControlToValidate="TextBox_studyMajor01" runat="server"  ErrorMessage="必填行学习经历专业未填写" Display="None"></asp:RequiredFieldValidator>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_studyBeginTime02" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyEndTime02" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyPlace02" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_studyMajor02" class="form-control" runat="server"> </asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_studyBeginTime03" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyEndTime03" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyPlace03" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_studyMajor03" class="form-control" runat="server"> </asp:TextBox></td>
                        </tr>
                    </table>
                </div>
                <br />
                <div class="form-group">
                    <label class="control-label col-md-2" for="studyEnglish">英语等级</label><span style="color: red; font-size: large;"> * </span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_StudyEnglish" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="无" Value="无" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="大学英语4级" Value="大学英语4级"></asp:ListItem>
                            <asp:ListItem Text="大学英语6级" Value="大学英语6级"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="studyConputer">计算机等级证书</label><span style="color: red; font-size: large;"> * </span>
                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList_studyConputer" class="form-control dropdown-toggle" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="无" Value="无" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="计算机1级" Value="计算机1级"></asp:ListItem>
                            <asp:ListItem Text="计算机2级" Value="计算机2级"></asp:ListItem>
                            <asp:ListItem Text="计算机3级" Value="计算机3级"></asp:ListItem>
                            <asp:ListItem Text="计算机4级" Value="计算机4级"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="studyOther">其他证书和特长</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_studyOther" class="form-control" TextMode="MultiLine" Style="overflow-y: visible" Width="100%" Wrap="true" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="studyPerformance">在校奖惩情况</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_studyPerformance" class="form-control" TextMode="MultiLine" Style="overflow-y: visible" Width="100%" Wrap="true" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>
        </div>
        <hr />
        <div class="form-group">
            <div class="col-md-12">
                <h3><b>第四步：填写家庭信息</b></h3>
            </div>
        </div>
        <div class="container-fluid">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <h4>
                            <label class="label label-info">填写说明</label></h4>
                        <ol>
                            <li>请如实填写家庭成员；</li>
                        </ol>
                    </div>
                </div>
                <h3><b>成员信息</b></h3>
                <div class="table-responsive">
                    <table border="1">

                        <tr>
                            <th>关系</th>
                            <th>姓名</th>
                            <th>年龄</th>
                            <th>工作单位（如已退休，请写退休前的工作单位）</th>
                            <th>职务</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_familyRelationship01" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_familyName01" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_familyAge01" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_familyPlace01" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_familyJob01" class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_familyRelationship02" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_familyName02" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_familyAge02" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_familyPlace02" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_familyJob02" class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox_familyRelationship03" class="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_familyName03" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_familyAge03" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_familyPlace03" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_familyJob03" class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />


            </div>
        </div>
        <div class="container-fluid">
            <div class="form-horizontal">
                <div class="form-group">

                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg btn-block" Text="提交简历" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />

                    <div class="col-md-12">
                        <p style="font-size: medium; font-family: 'KaiTi','Times New Roman', Times, serif">

                            <b>承诺：本人保证，此表中的所有内容是真实且完整的。任何虚假均可能导致取消录用资格，或者被事后解除雇佣关系。由此造成的一切后果，均由本人承担。</b>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />

        <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
        <script src="https://code.jquery.com/jquery.js"></script>
        <!-- 包括所有已编译的插件 -->
        <script src="../bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
