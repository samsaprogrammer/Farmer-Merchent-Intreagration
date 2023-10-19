

<%

    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Protel</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <script>
            function validate(){
                var oldpassword=document.getElementById("oldpassword");
                var newpassword=document.getElementById("newpassword");
                var confirmpassword=document.getElementById("confirmpassword");
                if(oldpassword.value=="" || oldpassword.value==null){
                    alert('Plz Enter Old Password');
                    document.getElementById("oldpasword").style.border="2px solid red";
                    oldpassword.focus();
                }else if(newpassword.value=="" || newpassword.value==null){
                    alert('Plz enter new password');
                    newpassword.focus();
                }else if(confirmpassword.value=="" || confirmpassword.value==null){
                    alert('Plz Enter confirm password');
                    confirmpassword.focus();
                }else if(newpassword.value!=confirmpassword.value){
                    alert('Confirm password is not match');
                    confirmpassword.focus();
                }else{
                    document.getElementById("frmchangepassword").submit();
                }
            }
        </script>
        <div class="container-fulid">
            <!--header section start-->
            <jsp:include page="header.jsp"/>
            <!--header section end-->
            <div class="row">
                <div class="col-sm-12 bg-light" style="min-height: 600px;">
                    <h2 style="color: orange;" class="text-center">Change Password</h2>
                    <form id="frmchangepassword" onsubmit="event.preventDefault();validate();" class="form-group" method="post" action="admincontroller.jsp">
                            <input type="hidden" name="page" value="changepassword"/>
                        <table class="table table-border" style="width: 60%; margin: auto;">
                            <tr>
                                <td>Old Password</td>
                                <td><input type="text" name="oldpassword" class="form-control" id="oldpassword"/></td>
                            </tr>
                            <tr>
                                <td>New Password</td>
                                <td><input type="password" name="newpassword" class="form-control" id="newpassword"/></td>
                            </tr>
                            <tr>
                                <td>Confirm Password</td>
                                <td><input type="password" name="confirmpassword" class="form-control" id="confirmpassword"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                        <button class="btn btn-warning">Change</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>





            <!--header section start-->
            <jsp:include page="footer.jsp"/>
            <!--header section end-->

        </div>
    </body>
</html>

<% }%>
