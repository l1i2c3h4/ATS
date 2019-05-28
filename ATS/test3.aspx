<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="ATS.text3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>


    </title>
    <script type="text/javascript">

       

        function display(id) {
                document.getElementById(id).style.display = "block";
            
        }

    </script>
</head>
<body>
    <form>
    
    <div id="div1">
        123
    </div>
    <div id="div2" style="display: none">
        456
    </div>
        <input id="Button1" type="button" value="button" onclick="display('div2');" />
    </form>
    
</body>
    
</html>
