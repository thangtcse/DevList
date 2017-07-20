<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="removeNote.aspx.cs" Inherits="DevList.removeNote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dev-List Remove Note</title>
    <script src="dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="dist/sweetalert.css" />
    <link rel="shortcut icon" type="image/x-icon" href="index_files/icon.png"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divShow" runat="server">
            <script type="text/javascript">
                swal({
                    title: "Are you sure?",
                    text: "You will not be able to recover this imaginary file!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Yes, delete it!",
                    cancelButtonText: "No, cancel plx!",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
 function (isConfirm) {
     if (isConfirm) {
         swal("Deleted!", "Your imaginary file has been deleted.", "success");
         var id = window.location.href.split('=')[1];
         window.location.replace("removeNote.aspx?removedId="+ id+ "");
     } else {
         swal("Cancelled", "Your imaginary file is safe :)", "error");
         window.history.go(-1); return false;
     }
 });

            </script>

        </div>
    </form>
</body>
</html>
