<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="ATS.ATSUI.Job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <link href="../css/resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet" />
    <link href="../css/resources/css/axure_rp_page.css" type="text/css" rel="stylesheet" />
    <link href="../css/data/styles.css" type="text/css" rel="stylesheet" />
    <link href="../css/files/求职岗位管理/styles.css" type="text/css" rel="stylesheet" />
    <script src="../css/resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="../css/resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="../css/resources/scripts/prototypePre.js"></script>
    <script src="../css/data/document.js"></script>
    <script src="../css/resources/scripts/prototypePost.js"></script>
    <script src="../css/files/求职岗位管理/data.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function () { return '../css/resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function () { return '../css/resources/Other.html'; };
        $axure.utils.getReloadPath = function () { return '../css/resources/reload.html'; };
    </script>
    <style type="text/css">
        .auto-style2 {
            width: 77px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="u270" class="text ">

            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="求职岗位"  Style="text-align: right"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox_Name" runat="server" ></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button_zengjia" runat="server" Text="增加" Width="70px" OnClick="Button_zengjia_Click" />
                    </td>

                </tr>
                <tr>
                    <td colspan="3">
                        <asp:RegularExpressionValidator ID="vldJob"
                            runat="server" ErrorMessage="格式不正确，请按部门-岗位的形式添加如（信息工程部-运维）"
                            ValidationExpression=".+-.+" ControlToValidate="TextBox_Name"  ForeColor="Red" Width="400px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>

            <br />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="当前求职岗位" Height="21px" Width="140px" Style="text-align: right"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button_chaxun" runat="server" Height="26px" Text="查询" Width="71px" OnClick="Button_chaxun_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="worker" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="worker" HeaderText="岗位" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
