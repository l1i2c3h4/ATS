<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="ATS.text1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script>
        function printdiv(printpage) {
            var headstr = "<html><head><title></title></head><body>";
            var footstr = "</body>";
            var printData = document.getElementById("dvData").innerHTML;
            var oldstr = document.body.innerHTML;
            document.body.innerHTML = headstr + newstr + footstr;
            window.print();
            document.body.innerHTML = oldstr;
            returnfalse;
        }
    </script>
    <title>div print</title>
</head>
<body>

    <input name="b_print" type="button" class="ipt" onclick="printme;" value=" Print " />
    <div id="div_print">
        <h1 style="color: Red">The Div content which you want to print</h1>
    </div>
    <span id='div1'>把要打印的内容放这里</span>
    <p>所有内容</p>
    <div id="div2">div2的内容</div>
    <a href="javascript:printme()" rel="external nofollow" target="_self">打印</a>
    <script language="javascript"> 
        function printme() {
            document.body.innerHTML = document.getElementById('div1').innerHTML + '<br/>' + document.getElementById('div2').innerHTML;
            window.print();
        }
    </script>

</body>
</html>
