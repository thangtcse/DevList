<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllCourse.aspx.cs" Inherits="ITMaster.ViewAllCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View All Course</title>
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
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">

                        <button type="button" class="form-control btn btn-primary">Load</button>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput"></label>
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
                $("#viewAllCourse").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
