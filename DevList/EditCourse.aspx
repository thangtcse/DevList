<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCourse.aspx.cs" Inherits="ITMaster.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Course</title>
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

                <!-- Text input-->
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

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label">Name</label>
                    <div class="col-md-4">
                        <input id="textinput" placeholder="name" class="form-control input-md" type="text">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Select a Center</label>
                    <div class="col-md-4">
                        <div class="btn-group">
                            <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">Select a Center <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Center 1</a></li>
                                <li><a href="#">Center 2</a></li>
                                <li><a href="#">Center 3</a></li>
                                <li><a href="#">Center 4</a></li>
                                <li><a href="#">Center 5</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">

                        <button type="button" name="button" class="form-control btn btn-primary">Submit</button>
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
                $("#editCourse").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
