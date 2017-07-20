<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ITMaster.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap-2.3.2.min.css" />
    <link href="lib/font-awesome.min.css" rel="stylesheet" />
    <script src="lib/jquery.min.js"></script>
    <script src="lib/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" method="POST" runat="server">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <fieldset>

                        <legend class="">Login</legend>
                        <div class="control-group">
                            <!-- Email -->
                            <label class="control-label">Email</label>
                            <div class="controls">
                                <asp:TextBox ID="txtEmail" required="" autofocus="" CssClass="input-xlarge" pattern="^[^\s@＠=]+[@|＠][^\.\s@＠]+(\.[^\.\s@＠]+)+$" title="Please enter a valid email address." placeholder="Email" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <!-- Password-->
                            <label class="control-label">Password</label>
                            <div class="controls">
                                <asp:TextBox ID="txtPassword" required="" CssClass="input-xlarge" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <!-- Center-->
                        <div class="control-group">
                            <!-- Button -->
                            <div class="controls">
                                <asp:Button ID="btnSignIn" CssClass="btn btn-primary" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </form>
    <script>
        $(".dropdown-menu li a").click(function () {
            var selText = $(this).text();
            $(this).parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
        });
    </script>
</body>
</html>
