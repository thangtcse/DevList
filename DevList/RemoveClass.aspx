﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveClass.aspx.cs" Inherits="ITMaster.RemoveClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editor: Remove Course</title>
    <link rel="stylesheet" type="text/css" href="lib/stylemain.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap.min.css">
    <link href="lib/font-awesome.min.css" rel="stylesheet">
    <script src="lib/jquery.min.js"></script>
    <script src="lib/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div id="load"></div>
        </div>

        <div class="mainPage">

            <div class="form-horizontal">

                <div class="form-group">
                    <label class="col-md-4 control-label">Select a Course</label>
                    <div class="col-md-4">
                        <div class="btn-group">
                            <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">Select a Course <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Course 1</a></li>
                                <li><a href="#">Course 2</a></li>
                                <li><a href="#">Course 3</a></li>
                                <li><a href="#">Course 4</a></li>
                                <li><a href="#">Course 5</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Select a Class</label>
                    <div class="col-md-4">
                        <div class="btn-group">
                            <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">Select a Class <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Class 1</a></li>
                                <li><a href="#">Class 2</a></li>
                                <li><a href="#">Class 3</a></li>
                                <li><a href="#">Class 4</a></li>
                                <li><a href="#">Class 5</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">

                        <button type="button" name="button" class="col-md-2 btn btn-primary">Remove</button>
                    </div>
                </div>
            </div>

        </div>
    </form>
    <script>
        $(".dropdown-menu li a").click(function () {
            var selText = $(this).text();
            $(this).parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
        });

        $(document).ready(function () {
            $("#load").load("include/AdminNavBar.html", function () {
                $("#removeClass").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>