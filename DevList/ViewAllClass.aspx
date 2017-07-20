<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllClass.aspx.cs" Inherits="ITMaster.ViewAllClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View All Class</title>
    <link rel="stylesheet" type="text/css" href="lib/stylemain.css"/>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap.min.css"/>
    <link href="lib/font-awesome.min.css" rel="stylesheet"/>
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
                    <label class="col-md-4 control-label">Select A Course</label>
                    <div class="col-md-4">
                        <div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                Select Course
                                    <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Select Course 1</a></li>
                                <li><a href="#">Select Course 2</a></li>
                                <li><a href="#">Select Course 3</a></li>
                                <li><a href="#">Select Course 4</a></li>
                                <li><a href="#">Select Course 5</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">

                        <button type="button" name="button" class="form-control btn btn-primary">Load</button>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">List class</label>
                    <div class="col-md-4">
                        <ul class="list-group">
                            <li class="list-group-item">First item</li>
                            <li class="list-group-item">Second item</li>
                            <li class="list-group-item">Third item</li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </form>
    <script>
        $(document).ready(function () {
            $("#load").load("include/AdminNavBar.html", function () {
                $("#viewAllClass").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
