<%@ Page Title="" Language="C#" MasterPageFile="~/ATSUI/hou/Masterhou.Master" AutoEventWireup="true" CodeBehind="RenLiHandle.aspx.cs" Inherits="ATS.ATSUI.hou.RenLiHandle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="col-sm-12">
        <br />
        <h2>应聘信息查询</h2>
        <br />
    </div>
    <div class="col-sm-12" id="div1">
        <label id="Label1">应聘时间</label>
        <input type="text" id="datetimeStart" name="datetimeStart" class="form_datetime" readonly autocomplete="off" />
        <label id="Label2">到</label>
        <input type="text" id="datetimeEnd" name="datetimeEnd" class="form_datetime" readonly autocomplete="off" />
        <asp:Button runat="server" ID="btn_TimeSearch" class="btn btn-primary" Text="查询" OnClick="btn_TimeSearch_Click" />
    </div>

    <br />

    <div class="col-sm-12" id="div2" style="display:none">
        <label id="Label3">第一选择</label>
        <asp:TextBox ID="TextBox_firstChoice" runat="server"></asp:TextBox>
        <label id="Label4">第二选择</label>
        <asp:TextBox ID="TextBox_secondChoice" runat="server"></asp:TextBox>
        <br />
        <asp:Button runat="server" ID="btn_Search" class="btn btn-primary" Text="查询" OnClick="btn_Search_Click" />
        &nbsp;&nbsp;
       
        &nbsp;&nbsp;
        <asp:Button runat="server" ID="btn_dayin" class="btn btn-primary" Text="导出表格" OnClick="btn_dayin_Click" />
    </div>

    <br />

    <div class="col-sm-12">
        <asp:GridView ID="GridView_Search" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNumber" CellPadding="4" ForeColor="#333333" GridLines="None" Height="86px" Width="1365px" OnSorting="GridView_Search_Sorting" AllowSorting="True" OnRowDeleting="GridView_Search_RowDeleting" OnRowCancelingEdit="GridView_Search_RowCancelingEdit"
            OnRowEditing="GridView_Search_RowEditing"
            OnRowUpdating="GridView_Search_RowUpdating">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="查看简历">
                    <ItemTemplate>
                        <a href="Resume.aspx?id=<%#Eval("IDCard")%>" target="eventPrintWindow">
                            <itemstyle horizontalalign="Center">
                            查看</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True"
                    EditText="处理简历" UpdateText="保存" CancelText="取消" />
                <asp:BoundField HeaderText="应聘编号" DataField="IDNumber" SortExpression="IDNumber" ItemStyle-HorizontalAlign="Center" ReadOnly="true">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="身份证号" DataField="IDCard" SortExpression="IDCard" ReadOnly="true" />
                <asp:BoundField HeaderText="姓名 " DataField="Name" SortExpression="name" ReadOnly="true" />
                <asp:BoundField HeaderText="简历筛选" DataField="Resume" SortExpression="resume" />
                <asp:BoundField HeaderText="面试情况" DataField="Interview" SortExpression="interview" />
                <asp:BoundField HeaderText="学历 " DataField="EducationalBackgrounp" ReadOnly="true" SortExpression="educationalBackgrounp" />
                <asp:BoundField HeaderText="联系方式" DataField="Phone" SortExpression="phone" ReadOnly="true" />
                <asp:BoundField HeaderText="地址 " DataField="Address" SortExpression="address" ReadOnly="true" />
                <asp:BoundField HeaderText="第一选择" DataField="FirstChoice" SortExpression="firstChoice" ReadOnly="true" />
                <asp:BoundField HeaderText="第二选择" DataField="SecondChoice" SortExpression="secondChoice" ReadOnly="true" />
                <asp:BoundField HeaderText="服从调剂" DataField="Adjust" SortExpression="adjust" ReadOnly="true" />
                <asp:BoundField DataField="maritalStatus" HeaderText="婚姻状况" ReadOnly="True" SortExpression="maritalStatus" />
                <asp:BoundField DataField="politicalStatus" HeaderText="政治面貌" SortExpression="politicalStatus" />
                <asp:BoundField DataField="studyConputer" HeaderText="电脑水平" ReadOnly="True" SortExpression="studyConputer" />
                <asp:BoundField DataField="studyEnglish" HeaderText="英语等级" ReadOnly="True" SortExpression="studyEnglish" />
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
        <br />
        <asp:DataGrid ID="GridView_dayin1" runat="server" OnItemDataBound="DataGrid1_ItemDataBound" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundColumn DataField="IDNumber" HeaderText="应聘编号" ReadOnly="True" SortExpression="IDNumber" />
                <asp:BoundColumn DataField="name" HeaderText="姓名" ReadOnly="True" SortExpression="name" />
                <asp:BoundColumn DataField="IDCard" HeaderText="身份证号" ReadOnly="True" SortExpression="IDCard" />
                <asp:BoundColumn DataField="gender" HeaderText="性别" ReadOnly="True" SortExpression="gender" />
                <asp:BoundColumn DataField="dateOfBirth" HeaderText="出生日期" ReadOnly="True" SortExpression="dateOfBirth" />
                <asp:BoundColumn DataField="maritalStatus" HeaderText="婚姻状况" ReadOnly="True" SortExpression="maritalStatus" />
                <asp:BoundColumn DataField="politicalStatus" HeaderText="群众" ReadOnly="True" SortExpression="politicalStatus" />
                <asp:BoundColumn DataField="nativePlace" HeaderText="籍贯" ReadOnly="True" SortExpression="nativePlace" />
                <asp:BoundColumn DataField="educationalBackgrounp" HeaderText="学历" ReadOnly="True" SortExpression="educationalBackgrounp" />
                <asp:BoundColumn DataField="height" HeaderText="身高" ReadOnly="True" SortExpression="height" />
                <asp:BoundColumn DataField="weight" HeaderText="体重" ReadOnly="True" SortExpression="weight" />
                <asp:BoundColumn DataField="communicableDisease" HeaderText="是否患有传染病" ReadOnly="True" SortExpression="communicableDisease" />
                <asp:BoundColumn DataField="achromatopsia" HeaderText="是否是色盲" ReadOnly="True" SortExpression="achromatopsia" />
                <asp:BoundColumn DataField="EstimatedTime" HeaderText="到岗时间" ReadOnly="True" SortExpression="EstimatedTime" />
                <asp:BoundColumn DataField="Email" HeaderText="电子邮箱" ReadOnly="True" SortExpression="Email" />
                <asp:BoundColumn DataField="phone" HeaderText="联系电话" ReadOnly="True" SortExpression="phone" />
                <asp:BoundColumn DataField="firstChoice" HeaderText="第一选择" ReadOnly="True" SortExpression="firstChoice" />
                <asp:BoundColumn DataField="secondChoice" HeaderText="第二选择" ReadOnly="True" SortExpression="secondChoice" />
                <asp:BoundColumn DataField="adjust" HeaderText="是否服从调剂" ReadOnly="True" SortExpression="adjust" />
                <asp:BoundColumn DataField="address" HeaderText="联系地址" ReadOnly="True" SortExpression="address" />
                <asp:BoundColumn DataField="resume" HeaderText="简历筛选情况" ReadOnly="True" SortExpression="resume" />
                <asp:BoundColumn DataField="interview" HeaderText="面试情况" ReadOnly="True" SortExpression="interview" />
                <asp:BoundColumn DataField="workBeginTime01" HeaderText="工作起始时间" ReadOnly="True" SortExpression="workBeginTime01" />
                <asp:BoundColumn DataField="workEndTime01" HeaderText="工作截止时间" ReadOnly="True" SortExpression="workEndTime01" />
                <asp:BoundColumn DataField="workPlace01" HeaderText="工作地点" ReadOnly="True" SortExpression="workPlace01" />
                <asp:BoundColumn DataField="workJob01" HeaderText="工作岗位" ReadOnly="True" SortExpression="workJob01" />
                <asp:BoundColumn DataField="workBeginTime02" HeaderText="工作起始时间" ReadOnly="True" SortExpression="workBeginTime02" />
                <asp:BoundColumn DataField="workEndTime02" HeaderText="工作截止时间" ReadOnly="True" SortExpression="workEndTime02" />
                <asp:BoundColumn DataField="workPlace02" HeaderText="工作地点" ReadOnly="True" SortExpression="workPlace02" />
                <asp:BoundColumn DataField="workJob02" HeaderText="工作岗位" ReadOnly="True" SortExpression="workJob02" />
                <asp:BoundColumn DataField="workBeginTime03" HeaderText="工作起始时间" ReadOnly="True" SortExpression="workBeginTime03" />
                <asp:BoundColumn DataField="workEndTime03" HeaderText="工作截止时间" ReadOnly="True" SortExpression="workEndTime03" />
                <asp:BoundColumn DataField="workPlace03" HeaderText="工作地点" ReadOnly="True" SortExpression="workPlace03" />
                <asp:BoundColumn DataField="workJob03" HeaderText="工作岗位" ReadOnly="True" SortExpression="workJob03" />
                <asp:BoundColumn DataField="studyBeginTime01" HeaderText="学习起始时间" ReadOnly="True" SortExpression="studyBeginTime01" />
                <asp:BoundColumn DataField="studyEndTime01" HeaderText="学习截止时间" ReadOnly="True" SortExpression="studyEndTime01" />
                <asp:BoundColumn DataField="studyPlace01" HeaderText="学习地点" ReadOnly="True" SortExpression="studyPlace01" />
                <asp:BoundColumn DataField="studyMajor01" HeaderText="学习专业" ReadOnly="True" SortExpression="studyMajor01" />
                <asp:BoundColumn DataField="studyBeginTime02" HeaderText="学习起始时间" ReadOnly="True" SortExpression="studyBeginTime02" />
                <asp:BoundColumn DataField="studyEndTime02" HeaderText="学习截止时间" ReadOnly="True" SortExpression="studyEndTime02" />
                <asp:BoundColumn DataField="studyPlace02" HeaderText="学习地点" ReadOnly="True" SortExpression="studyPlace02" />
                <asp:BoundColumn DataField="studyMajor02" HeaderText="学习专业" ReadOnly="True" SortExpression="studyMajor02" />
                <asp:BoundColumn DataField="studyBeginTime03" HeaderText="学习起始时间" ReadOnly="True" SortExpression="studyBeginTime03" />
                <asp:BoundColumn DataField="studyEndTime03" HeaderText="学习截止时间" ReadOnly="True" SortExpression="studyEndTime03" />
                <asp:BoundColumn DataField="studyPlace03" HeaderText="学习地点" ReadOnly="True" SortExpression="studyPlace03" />
                <asp:BoundColumn DataField="studyMajor03" HeaderText="学习专业" ReadOnly="True" SortExpression="studyMajor03" />
                <asp:BoundColumn DataField="studyConputer" HeaderText="电脑水平" ReadOnly="True" SortExpression="studyConputer" />
                <asp:BoundColumn DataField="studyEnglish" HeaderText="英语等级" ReadOnly="True" SortExpression="studyEnglish" />
                <asp:BoundColumn DataField="studyOther" HeaderText="其他证书" ReadOnly="True" SortExpression="studyOther" />
                <asp:BoundColumn DataField="familyRelationship01" HeaderText="家庭成员关系" ReadOnly="True" SortExpression="familyRelationship01" />
                <asp:BoundColumn DataField="familyName01" HeaderText="家庭成员姓名" ReadOnly="True" SortExpression="familyName01" />
                <asp:BoundColumn DataField="familyAge01" HeaderText="家庭成员年龄" ReadOnly="True" SortExpression="familyAge01" />
                <asp:BoundColumn DataField="familyPlace01" HeaderText="工作单位" ReadOnly="True" SortExpression="familyPlace01" />
                <asp:BoundColumn DataField="familyJob01" HeaderText="岗位" ReadOnly="True" SortExpression="familyJob01" />
                <asp:BoundColumn DataField="familyRelationship02" HeaderText="家庭成员关系" ReadOnly="True" SortExpression="familyRelationship02" />
                <asp:BoundColumn DataField="familyName02" HeaderText="家庭成员姓名" ReadOnly="True" SortExpression="familyName02" />
                <asp:BoundColumn DataField="familyAge02" HeaderText="家庭成员年龄" ReadOnly="True" SortExpression="familyAge02" />
                <asp:BoundColumn DataField="familyPlace02" HeaderText="工作单位" ReadOnly="True" SortExpression="familyPlace02" />
                <asp:BoundColumn DataField="familyJob02" HeaderText="岗位" ReadOnly="True" SortExpression="familyJob02" />
                <asp:BoundColumn DataField="familyRelationship03" HeaderText="家庭成员关系" ReadOnly="True" SortExpression="familyRelationship03" />
                <asp:BoundColumn DataField="familyName03" HeaderText="家庭成员姓名" ReadOnly="True" SortExpression="familyName03" />
                <asp:BoundColumn DataField="familyAge03" HeaderText="家庭成员年龄" ReadOnly="True" SortExpression="familyAge03" />
                <asp:BoundColumn DataField="familyPlace03" HeaderText="工作单位" ReadOnly="True" SortExpression="familyPlace03" />
                <asp:BoundColumn DataField="familyJob03" HeaderText="岗位" ReadOnly="True" SortExpression="familyJob03" />
                <asp:BoundColumn DataField="time" HeaderText="申请时间" ReadOnly="True" SortExpression="time" />
            </Columns>
        </asp:DataGrid>
        <!--<div style="vnd.ms-excel.numberformat:@">
            <asp:GridView ID="GridView_dayin" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="应聘编号" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="name" HeaderText="姓名" ReadOnly="True" SortExpression="name" />
                    <asp:BoundField DataField="IDCard" HeaderText="身份证号" ReadOnly="True" SortExpression="IDCard" />
                    <asp:BoundField DataField="gender" HeaderText="性别" ReadOnly="True" SortExpression="gender" />
                    <asp:BoundField DataField="dateOfBirth" HeaderText="出生日期" ReadOnly="True" SortExpression="dateOfBirth" />
                    <asp:BoundField DataField="maritalStatus" HeaderText="婚姻状况" ReadOnly="True" SortExpression="maritalStatus" />
                    <asp:BoundField DataField="politicalStatus" HeaderText="群众" ReadOnly="True" SortExpression="politicalStatus" />
                    <asp:BoundField DataField="nativePlace" HeaderText="籍贯" ReadOnly="True" SortExpression="nativePlace" />
                    <asp:BoundField DataField="educationalBackgrounp" HeaderText="学历" ReadOnly="True" SortExpression="educationalBackgrounp" />
                    <asp:BoundField DataField="height" HeaderText="身高" ReadOnly="True" SortExpression="height" />
                    <asp:BoundField DataField="weight" HeaderText="体重" ReadOnly="True" SortExpression="weight" />
                    <asp:BoundField DataField="communicableDisease" HeaderText="是否患有传染病" ReadOnly="True" SortExpression="communicableDisease" />
                    <asp:BoundField DataField="achromatopsia" HeaderText="是否是色盲" ReadOnly="True" SortExpression="achromatopsia" />
                    <asp:BoundField DataField="EstimatedTime" HeaderText="到岗时间" ReadOnly="True" SortExpression="EstimatedTime" />
                    <asp:BoundField DataField="Email" HeaderText="电子邮箱" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="phone" HeaderText="联系电话" ReadOnly="True" SortExpression="phone" />
                    <asp:BoundField DataField="firstChoice" HeaderText="第一选择" ReadOnly="True" SortExpression="firstChoice" />
                    <asp:BoundField DataField="secondChoice" HeaderText="第二选择" ReadOnly="True" SortExpression="secondChoice" />
                    <asp:BoundField DataField="adjust" HeaderText="是否服从调剂" ReadOnly="True" SortExpression="adjust" />
                    <asp:BoundField DataField="address" HeaderText="联系地址" ReadOnly="True" SortExpression="address" />
                    <asp:BoundField DataField="resume" HeaderText="简历筛选情况" ReadOnly="True" SortExpression="resume" />
                    <asp:BoundField DataField="interview" HeaderText="面试情况" ReadOnly="True" SortExpression="interview" />
                    <asp:BoundField DataField="workBeginTime01" HeaderText="工作起始时间" ReadOnly="True" SortExpression="workBeginTime01" />
                    <asp:BoundField DataField="workEndTime01" HeaderText="工作截止时间" ReadOnly="True" SortExpression="workEndTime01" />
                    <asp:BoundField DataField="workPlace01" HeaderText="工作地点" ReadOnly="True" SortExpression="workPlace01" />
                    <asp:BoundField DataField="workJob01" HeaderText="工作岗位" ReadOnly="True" SortExpression="workJob01" />
                    <asp:BoundField DataField="workBeginTime02" HeaderText="工作起始时间" ReadOnly="True" SortExpression="workBeginTime02" />
                    <asp:BoundField DataField="workEndTime02" HeaderText="工作截止时间" ReadOnly="True" SortExpression="workEndTime02" />
                    <asp:BoundField DataField="workPlace02" HeaderText="工作地点" ReadOnly="True" SortExpression="workPlace02" />
                    <asp:BoundField DataField="workJob02" HeaderText="工作岗位" ReadOnly="True" SortExpression="workJob02" />
                    <asp:BoundField DataField="workBeginTime03" HeaderText="工作起始时间" ReadOnly="True" SortExpression="workBeginTime03" />
                    <asp:BoundField DataField="workEndTime03" HeaderText="工作截止时间" ReadOnly="True" SortExpression="workEndTime03" />
                    <asp:BoundField DataField="workPlace03" HeaderText="工作地点" ReadOnly="True" SortExpression="workPlace03" />
                    <asp:BoundField DataField="workJob03" HeaderText="工作岗位" ReadOnly="True" SortExpression="workJob03" />
                    <asp:BoundField DataField="studyBeginTime01" HeaderText="学习起始时间" ReadOnly="True" SortExpression="studyBeginTime01" />
                    <asp:BoundField DataField="studyEndTime01" HeaderText="学习截止时间" ReadOnly="True" SortExpression="studyEndTime01" />
                    <asp:BoundField DataField="studyPlace01" HeaderText="学习地点" ReadOnly="True" SortExpression="studyPlace01" />
                    <asp:BoundField DataField="studyMajor01" HeaderText="学习专业" ReadOnly="True" SortExpression="studyMajor01" />
                    <asp:BoundField DataField="studyBeginTime02" HeaderText="学习起始时间" ReadOnly="True" SortExpression="studyBeginTime02" />
                    <asp:BoundField DataField="studyEndTime02" HeaderText="学习截止时间" ReadOnly="True" SortExpression="studyEndTime02" />
                    <asp:BoundField DataField="studyPlace02" HeaderText="学习地点" ReadOnly="True" SortExpression="studyPlace02" />
                    <asp:BoundField DataField="studyMajor02" HeaderText="学习专业" ReadOnly="True" SortExpression="studyMajor02" />
                    <asp:BoundField DataField="studyBeginTime03" HeaderText="学习起始时间" ReadOnly="True" SortExpression="studyBeginTime03" />
                    <asp:BoundField DataField="studyEndTime03" HeaderText="学习截止时间" ReadOnly="True" SortExpression="studyEndTime03" />
                    <asp:BoundField DataField="studyPlace03" HeaderText="学习地点" ReadOnly="True" SortExpression="studyPlace03" />
                    <asp:BoundField DataField="studyMajor03" HeaderText="学习专业" ReadOnly="True" SortExpression="studyMajor03" />
                    <asp:BoundField DataField="studyConputer" HeaderText="电脑水平" ReadOnly="True" SortExpression="studyConputer" />
                    <asp:BoundField DataField="studyEnglish" HeaderText="英语等级" ReadOnly="True" SortExpression="studyEnglish" />
                    <asp:BoundField DataField="studyOther" HeaderText="其他证书" ReadOnly="True" SortExpression="studyOther" />
                    <asp:BoundField DataField="familyRelationship01" HeaderText="家庭成员关系" ReadOnly="True" SortExpression="familyRelationship01" />
                    <asp:BoundField DataField="familyName01" HeaderText="家庭成员姓名" ReadOnly="True" SortExpression="familyName01" />
                    <asp:BoundField DataField="familyAge01" HeaderText="家庭成员年龄" ReadOnly="True" SortExpression="familyAge01" />
                    <asp:BoundField DataField="familyPlace01" HeaderText="工作单位" ReadOnly="True" SortExpression="familyPlace01" />
                    <asp:BoundField DataField="familyJob01" HeaderText="岗位" ReadOnly="True" SortExpression="familyJob01" />
                    <asp:BoundField DataField="familyRelationship02" HeaderText="家庭成员关系" ReadOnly="True" SortExpression="familyRelationship02" />
                    <asp:BoundField DataField="familyName02" HeaderText="家庭成员姓名" ReadOnly="True" SortExpression="familyName02" />
                    <asp:BoundField DataField="familyAge02" HeaderText="家庭成员年龄" ReadOnly="True" SortExpression="familyAge02" />
                    <asp:BoundField DataField="familyPlace02" HeaderText="工作单位" ReadOnly="True" SortExpression="familyPlace02" />
                    <asp:BoundField DataField="familyJob02" HeaderText="岗位" ReadOnly="True" SortExpression="familyJob02" />
                    <asp:BoundField DataField="familyRelationship03" HeaderText="家庭成员关系" ReadOnly="True" SortExpression="familyRelationship03" />
                    <asp:BoundField DataField="familyName03" HeaderText="家庭成员姓名" ReadOnly="True" SortExpression="familyName03" />
                    <asp:BoundField DataField="familyAge03" HeaderText="家庭成员年龄" ReadOnly="True" SortExpression="familyAge03" />
                    <asp:BoundField DataField="familyPlace03" HeaderText="工作单位" ReadOnly="True" SortExpression="familyPlace03" />
                    <asp:BoundField DataField="familyJob03" HeaderText="岗位" ReadOnly="True" SortExpression="familyJob03" />
                    <asp:BoundField DataField="time" HeaderText="申请时间" ReadOnly="True" SortExpression="time" />
               </Columns>
            </asp:GridView>
        </div>-->
    </div>

</asp:Content>
