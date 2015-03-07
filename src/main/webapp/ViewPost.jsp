<%-- 
    Document   : ViewPost
    Created on : Mar 5, 2015, 1:12:02 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">    
                    <div class="page-header">
                        <h1>View Post Page</h1>
                    </div>
                    <button type="button" class="btn btn-default" onclick="location='NewPostPage.jsp'">Create Post</buton><br />
                </div>
                <div class="panel-body">
                    <table>
                        <c:forEach items="${posts}" var="post">
                            <tr>
                                <td>
                                    <p><strong>Text:</strong> ${post.text}</p>
                                    <p><strong>User:</strong> ${post.username} <br /> ${post.date}</p>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div> 
            </div>
        </div>
    </body>
</html>
