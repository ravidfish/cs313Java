<%-- 
    Document   : SignIn
    Created on : Mar 5, 2015, 12:51:04 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="page-header">
                        <h1>Welcome, Please sign in</h1>
                    </div>
                    <button type="button" class="btn btn-default" onclick="location='SignUp.jsp'">Create User</button><br />
                </div>
                <div class="panel-body">
                    <form action="VerifyLogin" method="POST">
                        <input type="text" name="username" /> User Name<br />
                        <input type="password" name="password" /> Password<br /><br />
                        <input type="submit" class="btn btn-default" value="Sign In" />
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
