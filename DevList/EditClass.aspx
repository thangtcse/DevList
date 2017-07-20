<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditClass.aspx.cs" Inherits="ITMaster.EditClass" %>

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
                           
                             <asp:DropDownList ID="drCourse" class="dropdown-menu" runat="server" OnSelectedIndexChanged="drCourse_SelectedIndexChanged">

                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Select a Class</label>
                    <div class="col-md-4">
                        <div class="btn-group">
                            <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">Select a Class <span class="caret"></span></a>
                            
                            <asp:DropDownList ID="drClass" class="dropdown-menu" runat="server">

                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label">Class Name</label>
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" placeholder="Class Name" class="form-control input-md" type="text">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">

                     <asp:Button type="button" name="button" class="form-control btn btn-primary" runat="server" Text="Submit" OnClick="Unnamed1_Click"></asp:Button>
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
            $("#load").load("include/<%= Session["navBar"] %>", function () {
                $("#editClass").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
