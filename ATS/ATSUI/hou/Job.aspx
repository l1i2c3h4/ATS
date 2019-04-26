<%@ Page Title="" Language="C#" MasterPageFile="~/ATSUI/hou/Masterhou.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="ATS.ATSUI.Job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="col-sm-12">
        <br />
        <h2>求职岗位管理</h2>
        <br />

    </div>

    <div class="col-sm-12">
        <label id="Label1">添加求职岗位</label>
        <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox>
        <asp:Button ID="Button_zengjia" runat="server" Text="增加" OnClick="Button_zengjia_Click" ValidationGroup="group1" type="button" class="btn btn-primary" />
    </div>

    <div class="col-sm-12">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_TextBox_Name" ValidationGroup="group1" ControlToValidate="TextBox_Name" runat="server" ForeColor="Red" Width="400px" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
    </div>

    <div class="col-sm-12">
        <asp:RegularExpressionValidator ID="vldJob"
            runat="server" ErrorMessage="格式不正确，请按部门-岗位的形式添加如（信息工程部-运维）"
            ValidationExpression=".+-.+" ControlToValidate="TextBox_Name" ValidationGroup="group1" ForeColor="Red" Width="400px"></asp:RegularExpressionValidator>
    </div>

    <div class="col-sm-12">
        <label id="Label2">当前求职岗位</label>
        <asp:Button ID="Button_chaxun" runat="server" Text="查询" OnClick="Button_chaxun_Click" class="btn btn-primary" />

    </div>
    <div class="col-sm-12">
        <br />
    </div>
    <div class="col-sm-12">
        <table>
            <tr>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="worker" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" Height="194px" Width="234px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField />
                        <asp:BoundField DataField="worker" HeaderText="岗位"></asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </tr>
        </table>

        <br />
    </div>


</asp:Content>

