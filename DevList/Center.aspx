<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Center.aspx.cs" Inherits="ITMaster.Center" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Center</title>
    <link rel="stylesheet" type="text/css" href="lib/stylemain.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap.min.css">
    <link href="lib/font-awesome.min.css" rel="stylesheet">
    <script src="lib/jquery.min.js"></script>
    <script src="lib/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div id="load"></div>

        <div class="mainPage">

            <div class="form-horizontal">
                <fieldset>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label">Center Name</label>
                        <div class="col-md-4">
                            <input placeholder="Class name" class="form-control input-md" type="text">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label">Address</label>
                        <div class="col-md-4">
                            <input placeholder="Address" class="form-control input-md" type="text">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">

                            <button type="button" name="button" class="form-control btn btn-primary">Submit</button>
                        </div>
                    </div>
                </fieldset>
            </div>

        </div>
        </div>
    </form>

    <script>


        $(document).ready(function () {
            $("#load").load("include/AdminNavBar.html", function () {
                $("#center").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
