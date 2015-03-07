<%-- 
    Document   : SignUp
    Created on : Mar 6, 2015, 8:43:54 AM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="page-header">
                        <h1>Create User</h1>
                    </div>
                </div>
                <div class="panel-body">
                    <form action="SignIn" method="POST">
                        <input type="text" name="username" /> User Name<br />
                        <input type="password" name="password" /> Password<br /><br />
                        <input type="submit" class="btn btn-default" value="Create User" />
                    </form>
                </div>
            </div>
        </div>    
    </body>
</html>
