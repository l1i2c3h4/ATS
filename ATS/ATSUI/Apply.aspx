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
    </head>
<body>
    <form id="form1" runat="server">
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
            </div>
        </div>
        <div id="A8" >
            <p>
                <span>
                    <asp:Label ID="Label1" runat="server" Text="姓名" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Name" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label2" runat="server" Text="性别" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Gender" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label3" runat="server" Text="民族" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_NativePlace" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label4" runat="server" Text="身份证号" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_IDCard" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label5" runat="server" Text="出生日期" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_DateOfBirth" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label6" runat="server" Text="婚姻状况" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_MaritalStatus" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label8" runat="server" Text="政治面貌" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_PoliticalStatus" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label9" runat="server" Text="身高" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Height" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label10" runat="server" Text="体重" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Weight" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label11" runat="server" Text="籍贯" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_NaticePlace" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label12" runat="server" Text="住址" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Address" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label13" runat="server" Text="电子邮箱" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Email" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label14" runat="server" Text="是否患有传染病" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_CommunicableDisease" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label15" runat="server" Text="是否色盲或色弱" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Achromatopsia" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label16" runat="server" Text="预计可到岗时间" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_EstimatedTime" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label17" runat="server" Text="第一志愿应聘岗位" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_FirstChoice" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label18" runat="server" Text="第二志愿应聘岗位" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_SecondChoice" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                <span>
                    <asp:Label ID="Label19" runat="server" Text="是否服从调剂" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Adjust" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;&nbsp;</p>
        </div>
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
                        <li>原单位联系人和联系人电话选填；</li>
                        <li>请从最近的工作经历开始填写起，且最多填写3条，无工作经历则直接点击“下一步”。</li>
                    </ol>
                </div>
            </div>
            </div>
        </div>
        <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
        <script src="https://code.jquery.com/jquery.js"></script>
        <!-- 包括所有已编译的插件 -->
        <script src="../bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
