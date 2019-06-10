<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="ATS.text3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>导出数据到Excel</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataGrid ID="DataGrid1" runat="server" 
            onitemdatabound="DataGrid1_ItemDataBound" >
        </asp:DataGrid>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="导出数据到Excel" />
    
    </div>
    </form>
</body>
</html>
