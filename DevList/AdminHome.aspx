<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ITMaster.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover {
                    background-color: #111;
                }
    </style>    
</head>
<body>
    <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">Admin Panel</a></li>
  <li><a href="#contact">Staff Panel</a></li>
  <li><a href="#about">Teacher Panel</a></li>
</ul>

</body>
</html>
