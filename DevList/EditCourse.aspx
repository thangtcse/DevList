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
                            <asp:DropDownList ID="ddlCourse" CssClass="btn-primary form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label">Name</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="tbName" placeholder="name" CssClass="form-control input-md" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Select a Center</label>
                    <div class="col-md-4">
                        <div class="btn-group">
                            <asp:DropDownList ID="ddlCenter" CssClass="btn-primary form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <asp:Button ID="Button1" CssClass="form-control btn btn-primary" runat="server" Text="Submit" />
                    </div>
                </div>
            </div>

        </div>
    </form>
    <script>


        $(document).ready(function () {
            $("#load").load("include/<%= Session["navBar"] %>", function () {
                $("#editCourse").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
