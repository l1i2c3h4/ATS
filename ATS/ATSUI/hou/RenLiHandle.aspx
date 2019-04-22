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
        <asp:TextBox ID="TextBox_BeginTime" runat="server"></asp:TextBox>
        <label id="Label2">到</label>
        <asp:TextBox ID="TextBox_EndTime" runat="server"></asp:TextBox>
        <asp:Button runat="server" ID="btn_TimeSearch" class="btn btn-primary" Text="查询"/>
    </div>
    <div class="col-sm-12">

        <asp:GridView ID="GridView_Search" runat="server" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField HeaderText="应聘编号" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
