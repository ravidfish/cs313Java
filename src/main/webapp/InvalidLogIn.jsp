<%-- 
    Document   : InvalidLogIn
    Created on : Mar 5, 2015, 1:00:55 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invalid Login Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Invalid Log In</h1>
            </div>
            <div>   
                <br />Error with either Username or Password.<br /><br />
            </div>
            <button type="button" class="btn btn-default" onclick="location='SignIn.jsp'">Back To Sign In Page</button>
        </div>
    </body>
</html>
