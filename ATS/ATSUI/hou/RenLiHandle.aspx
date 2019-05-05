<%@ Page Title="" Language="C#" MasterPageFile="~/ATSUI/hou/Masterhou.Master" AutoEventWireup="true" CodeBehind="RenLiHandle.aspx.cs" Inherits="ATS.ATSUI.hou.RenLiHandle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm-12">
        <br />
        <h2>应聘信息查询</h2>
        <br />
    </div>

    <div class="col-sm-12">
        <label id="Label1">应聘时间</label>
        <input type="text" id="datetimeStart" name="datetimeStart" class="form_datetime" readonly autocomplete="off"/>
        <label id="Label2">到</label>
        <input type="text" id="datetimeEnd" name="datetimeEnd" class="form_datetime" readonly autocomplete="off"/>
        <asp:Button runat="server" ID="btn_TimeSearch" class="btn btn-primary" Text="查询" OnClick="btn_TimeSearch_Click" />
    </div>

    <div class="col-sm-12">
        <br />
        <br />
    </div>

    <div class="col-sm-12">

        <asp:GridView ID="GridView_Search" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNumber"  CellPadding="4" ForeColor="#333333" GridLines="None" Height="181px" Width="968px" OnSorting="GridView_Search_Sorting" AllowSorting="True" OnRowDeleting="GridView_Search_RowDeleting">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField HeaderText="应聘编号" DataField="IDNumber" SortExpression="IDNumber" ItemStyle-HorizontalAlign="Center" > <ItemStyle HorizontalAlign="Center"></ItemStyle></asp:BoundField>
                <asp:BoundField HeaderText="身份证号" DataField="IDCard" SortExpression="IDCard" />
                <asp:BoundField HeaderText="姓名 " DataField="Name" SortExpression="name" />
                <asp:BoundField HeaderText="简历筛选" DataField="Resume" SortExpression="resume"/>
                <asp:BoundField HeaderText="面试情况" DataField="Interview" SortExpression="interview" />
                <asp:BoundField HeaderText="学历 " DataField="EducationalBackgrounp" SortExpression="educationalBackgrounp" />
                <asp:BoundField HeaderText="联系方式" DataField="Phone" SortExpression="phone" />
                <asp:BoundField HeaderText="地址 " DataField="Address" SortExpression="address" />
                <asp:BoundField HeaderText="第一选择" DataField="FirstChoice" SortExpression="firstChoice"/>
                <asp:BoundField HeaderText="第二选择" DataField="SecondChoice" SortExpression="secondChoice" />
                <asp:BoundField HeaderText="服从调剂" DataField="Adjust" SortExpression="adjust" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

    </div>
</asp:Content>
