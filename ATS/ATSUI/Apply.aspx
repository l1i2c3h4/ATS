<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="ATS.ATSUI.Apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>申请求职申请页面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <link href="../css/resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet" />
    <link href="../css/resources/css/axure_rp_page.css" type="text/css" rel="stylesheet" />
    <link href="../css/data/styles.css" type="text/css" rel="stylesheet" />
    <link href="../css/files/申请/styles.css" type="text/css" rel="stylesheet" />
    <script src="../css/resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="../css/resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="../css/resources/scripts/prototypePre.js"></script>
    <script src="../css/data/document.js"></script>
    <script src="../css/resources/scripts/prototypePost.js"></script>
    <script src="../css/files/申请/data.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function () { return '../css/resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function () { return '../css/resources/Other.html'; };
        $axure.utils.getReloadPath = function () { return '../css/resources/reload.html'; };
    </script>
    <style type="text/css">
        .auto-style1 {
            left: 61px;
            top: 79px;
            width: 70px;
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="u2_text" class="ax_default _一级标题">
            <p><span>第一步：填写基本信息 </span></p>
        </div>
        <div id="u3" class="ax_default label">
            <div id="u3_div" class=""></div>
            <div id="u3_text" class="text ">
                <p><span>填写说明</span></p>
            </div>
        </div>
        <div id="u4" class="ax_default _文本段落">
            <p><span>1. *号为必填项目；</span></p>
            <p><span>2. 所有信息请真实填写。</span></p>
            <p><span>3. 出生日期填写格式如“2016-09-09”；</span></p>
        </div>
        <div id="u5" class="ax_default _一级标题">
            <p><span>基本情况</span></p>
        </div>
        <div id="u8_text" class="text ">
            <p>
                <span>
                    <asp:Label ID="Label1" runat="server" Text="姓名" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Name" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label2" runat="server" Text="性别" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_Gender" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label3" runat="server" Text="民族" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_NativePlace" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label4" runat="server" Text="身份证号" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_IDCard" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label5" runat="server" Text="出生日期" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_DateOfBirth" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label6" runat="server" Text="婚姻状况" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_MaritalStatus" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label8" runat="server" Text="政治面貌" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox_PoliticalStatus" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label9" runat="server" Text="身高" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox9" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label10" runat="server" Text="体重" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox10" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label11" runat="server" Text="籍贯" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox11" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label12" runat="server" Text="住址" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox12" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label13" runat="server" Text="电子邮箱" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox13" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label14" runat="server" Text="是否患有传染病" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox14" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label15" runat="server" Text="是否色盲或色弱" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox15" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label16" runat="server" Text="预计可到岗时间" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox16" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label17" runat="server" Text="第一志愿应聘岗位" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox17" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label18" runat="server" Text="第二志愿应聘岗位" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox18" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <span>
                    <asp:Label ID="Label19" runat="server" Text="是否服从调剂" Height="21px" Width="150px" Style="text-align: right"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="TextBox19" runat="server" Height="21px" Width="190px"></asp:TextBox>
                </span>
            </p>
        </div>

    </form>
</body>
</html>
