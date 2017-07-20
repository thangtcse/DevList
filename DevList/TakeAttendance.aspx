<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TakeAttendance.aspx.cs" Inherits="ITMaster.TakeAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Take Attendance</title>
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

        <div class="container">

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
                    <label class="col-md-4 control-label">Select a Day</label>

                    <div class="col-md-4">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </div>
                </div>



                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-6">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <div class="col-md-8">
                                    First item
                                </div>
                                <fieldset id="group1">
                                    <label class="radio-inline">
                                        <input name="group1" value="Absent" checked="checked" type="radio">Absent
                                    </label>
                                    <label class="radio-inline">
                                        <input name="group1" value="Present" type="radio">Present
                                    </label>
                                </fieldset>

                            </li>

                            <li class="list-group-item">
                                <div class="col-md-8">
                                    First item
                                </div>

                                <fieldset id="group2">
                                    <label class="radio-inline">
                                        <input name="group2" value="Absent" checked="checked" type="radio">Absent
                                    </label>
                                    <label class="radio-inline">
                                        <input name="group2" value="Present" type="radio">Present
                                    </label>
                                </fieldset>
                            </li>

                            <li class="list-group-item">
                                <div class="col-md-8">
                                    First item
                                </div>
                                <fieldset id="group3">
                                    <label class="radio-inline">
                                        <input name="group3" value="Absent" checked="checked" type="radio">Absent
                                    </label>
                                    <label class="radio-inline">
                                        <input name="group3" value="Present" type="radio">Present
                                    </label>
                                </fieldset>
                            </li>

                            <li class="list-group-item">
                                <div class="col-md-8">
                                    First item
                                </div>

                                <fieldset id="group4">
                                    <label class="radio-inline">
                                        <input name="group4" value="Absent" checked="checked" type="radio">Absent
                                    </label>
                                    <label class="radio-inline">
                                        <input name="group4" value="Present" type="radio">Present
                                    </label>
                                </fieldset>
                            </li>

                        </ul>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="button"></label>
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
                $("#takeAttendance").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
