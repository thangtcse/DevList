<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAccount.aspx.cs" Inherits="ITMaster.AddAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Account</title>
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
                    <label class="col-md-4 control-label">Name</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="tbName" CssClass="form-control input-md" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label">Email</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="tbEmail" CssClass="form-control input-md" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label">Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="tbPassword" CssClass="form-control input-md" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Multiple Radios (inline) -->
                <div class="form-group">
                    <label class="col-md-4 control-label">Role</label>
                    <div class="col-md-4">
                        <label class="radio-inline">
                            <asp:RadioButton ID="rbAdmin" runat="server" GroupName="role" Checked="true" />
                            Admin
   
                        </label>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rbEditor" runat="server" GroupName="role" />
                            Editor
   
                        </label>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rbTeacher" runat="server" GroupName="role" />
                            Teacher
   
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <asp:Button ID="btnSubmit" CssClass="form-control btn btn-primary" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
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
                $("#addAccount").toggleClass("liClassSelected");
            });
        });
    </script>
</body>
</html>
