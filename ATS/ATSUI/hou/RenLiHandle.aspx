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
        <input size="16" type="text" value="" readonly class="form_datetime">
        <asp:TextBox ID="TextBox_BeginTime" runat="server" class="form_datetime"></asp:TextBox>
        <label id="Label2">到</label>
        <asp:TextBox ID="TextBox_EndTime" runat="server" class="form_datetime"></asp:TextBox>
        <asp:Button runat="server" ID="btn_TimeSearch" class="btn btn-primary" Text="查询"/>
    </div>

    <div class="col-sm-12">

        <asp:GridView ID="GridView_Search" runat="server" AutoGenerateColumns="false" CellPadding="2">
            <Columns>
                <asp:BoundField HeaderText="应聘编号" DataField="IDNumber"/>
                <asp:BoundField HeaderText="身份证号" DataField="IDCard"/>
                <asp:BoundField HeaderText="姓名 " DataField="Name"/>
                <asp:BoundField HeaderText="简历筛选" DataField="Resume"/>
                <asp:BoundField HeaderText="面试情况" DataField="Interview"/>
                <asp:BoundField HeaderText="学历 " DataField="EducationalBackgrounp"/>
                <asp:BoundField HeaderText="联系方式" DataField="Phone"/>
                <asp:BoundField HeaderText="地址 " DataField="Address"/>
                <asp:BoundField HeaderText="第一选择" DataField="FirstChoice"/>
                <asp:BoundField HeaderText="第二选择" DataField="SecondChoice"/>
                <asp:BoundField HeaderText="服从调剂" DataField="Adjust"/>
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
