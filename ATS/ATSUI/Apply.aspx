<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="ATS.ATSUI.Apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>申请求职申请页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
                </div>



                <h3><b>基本情况</b></h3>
                <div class="form-group">
                    <label class="control-label col-md-2" for="Name">姓名</label><span style="color: red; font-size: large;"> * <asp:RequiredFieldValidator ID="vldRangeValidator" runat="server" ControlToValidate="TextBox_Name" ErrorMessage="姓名不能为空 "></asp:RequiredFieldValidator></span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Name" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Gender">性别</label><span style="color: red; font-size: large;"> *
                    </span><div class="col-md-4">
                          <asp:DropDownList ID="DropDownList_Gender" runat="server">
                    </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="NativePlace">民族</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_NativePlace" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="IDCard">身份证号</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_IDCard" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="DateOfBirth">出生日期</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_DateOfBirth" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="MaritalStatus">婚姻状况</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_MaritalStatus" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="PoliticalStatus">政治面貌</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_PoliticalStatus" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Height">身高</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Height" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Weight">体重</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Weight" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="NaticePlace">籍贯</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_NaticePlace" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Address">住址</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Address" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Email">电子邮箱</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Email" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="CommunicableDisease">是否患有传染病</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_CommunicableDisease" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Achromatopsia">是否色盲或色弱</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Achromatopsia" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="EstimatedTime">预计可到岗时间</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_EstimatedTime" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="FirstChoice">第一志愿应聘岗位</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_FirstChoice" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="SecondChoice">第二志愿应聘岗位</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_SecondChoice" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-2" for="Adjust">是否服从调剂</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_Adjust" class="form-control" runat="server"></asp:TextBox>
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
                            <li>请从最近的学习经历开始填写起，至少填写一条，最多填写3条。</li>
                        </ol>
                    </div>
                </div>


                <h3><b>工作经历</b></h3>
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
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyEndTime01" class="form-control" runat="server"> </asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox_studyPlace01" class="form-control" runat="server"> </asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox_studyMajor01" class="form-control" runat="server"> </asp:TextBox></td>
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
                    <label class="control-label col-md-2" for="studyEnglish">英语等级</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_studyEnglish" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="studyEnglish">计算机等级证书</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_studyConputer" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="studyOther">其他证书和特长</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_studyOther" class="form-control" TextMode="MultiLine" Style="overflow-y: visible" Width="100%" Wrap="true" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2" for="studyPerformance">在校奖惩情况</label><span style="color: red; font-size: large;"> *</span>
                    <div class="col-md-4">
                        <asp:TextBox ID="TextBox_studyPerformance" class="form-control" TextMode="MultiLine" Style="overflow-y: visible" Width="100%" Wrap="true" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>
        </div>
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
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg col-md-2 col-md-offset-4" Text="提交简历" />
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
