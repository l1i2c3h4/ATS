<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ATS.ATSUI.qian.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>应聘流程查询页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 引入 Bootstrap -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" role="form">
        <div class="form-group">
            <div class="col-md-12">
                <h2 style="font-family: 'KaiTi','Times New Roman', Times, serif">欢迎查询应聘状态</h2>
                <!--<p>请输入您的身份证号查询：</p>
                <label>应聘编号</label>
                <asp:TextBox ID="TextBox_searchIDNumber" runat="server"></asp:TextBox>-->
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <label>身份证号</label>
                <asp:TextBox ID="TextBox_searchIDCard" runat="server"></asp:TextBox><span style="color: red; font-size: large;"> * </span><span style="color: red">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_IDCard" ControlToValidate="TextBox_searchIDCard" runat="server" ErrorMessage="身份证号不能为空"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_IDCard" runat="server" ValidationExpression="(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$)" ControlToValidate="TextBox_searchIDCard" ErrorMessage="请输入正确的身份证号"></asp:RegularExpressionValidator></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12">
                <a class="btn btn-warning" href="Recruit.aspx">返回主页</a>
                <asp:Button ID="Button_Search" runat="server" class="btn btn-info" Text="查询" OnClick="Button_Search_Click" />
                <hr />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12">
                <asp:Label ID="Label_Information" runat="server" ForeColor="Red" visible="false" Text=""></asp:Label>
                <br />
            </div>
        </div>

        <div class="col-md-12">
            <table id="Table_chaxun" class="table table-bordered table-condensed" runat="server" visible="false">
                <tr>
                    <th>姓名</th>
                    <td>
                        <asp:Label ID="Label_Name" runat="server" Text=""></asp:Label>
                    </td>
                    <th>应聘编号</th>
                    <td>
                        <asp:Label ID="Label_IDNumber" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>求职第一志愿</th>
                    <td colspan="3">
                        <asp:Label ID="Label_First" runat="server" Text=""></asp:Label></td>

                </tr>
                 <tr>
                    <th>求职第二志愿</th>
                    <td colspan="3">
                        <asp:Label ID="Label_Second" runat="server" Text=""></asp:Label></td>

                </tr>
                <tr>
                    <th colspan="4" style="text-align: center" class="auto-style1">进度情况</th>

                </tr>
                <tr>
                    <th>资格审查/简历筛选</th>
                    <td colspan="3">
                        <asp:Label ID="Label_resume" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>考核状态</th>
                    <td colspan="3">
                        <asp:Label ID="Label_interview" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th colspan="4" style="text-align: center">当前通知
                    </th>

                </tr>
                <tr>
                    <td colspan="4">暂无！请随时保持关注，耐心等候通知！</td>
                </tr>


            </table>
            <p>如果您对查询结果有疑问，请电话联系广西分公司人力资源部</p>
        </div>
    </form>
</body>
</html>
