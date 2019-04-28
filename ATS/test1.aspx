<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="ATS.test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 引入 Bootstrap -->
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <title></title>
    <!-- 引入 Bootstrap -->
</head>
<body>
    
        <input size="16" type="text" value="2012-06-15 14:45" readonly class="form_datetime"/>

        <script type="text/javascript">
            $(".form_datetime").datetimepicker({ format: 'yyyy-mm-dd hh:ii' });
        </script>
    
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap-datetimepicker.js"></script>
    <script src="bootstrap/js/jquery-1.8.3.min.js"></script>
    <script src="bootstrap/js/locales/bootstrap-datetimepicker.fr.js"></script>
</body>
</html>
