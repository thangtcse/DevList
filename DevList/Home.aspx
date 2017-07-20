<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ITMaster.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Account</title>
    <link rel="stylesheet" type="text/css" href="lib/stylemain.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap.min.css">
    <link href="lib/font-awesome.min.css" rel="stylesheet">
    <script src="lib/jquery.min.js"></script>
    <script src="lib/bootstrap.min.js"></script>
</head>

<body>
    <div class="row">
        <div id="load"></div>
    </div>
    <script>
        $(document).ready(function () {
            $("#load").load("include/<%= Session["navBar"] %>", function () {
                $("#addAccount").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
