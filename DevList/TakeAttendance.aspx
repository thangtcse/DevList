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
                            <asp:DropDownList ID="ddlCourse" CssClass="btn-primary form-controls" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Select a Class</label>
                    <div class="col-md-4">
                        <div class="btn-group">
                            <asp:DropDownList ID="ddlClass" CssClass="btn-primary form-controls" runat="server"></asp:DropDownList>
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
                        <asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-primary" Text="Submit" />
                    </div>
                </div>


            </div>

        </div>
    </form>
    <script>
        $(document).ready(function () {
            $("#load").load("include/<%= Session["navBar"] %>", function () {
                $("#takeAttendance").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
