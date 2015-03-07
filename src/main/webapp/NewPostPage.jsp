<%-- 
    Document   : NewPostPage
    Created on : Mar 5, 2015, 1:06:03 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Post Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="page-header">
                        <h1>Create New Post</h1>
                    </div>
                    <button type="button" class="btn btn-default" onclick="location='LoadPosts'">View All Posts</button><br />
                </div>
                <div class="panel-body">
                    <form id="myForm" action="NewPost" method="POST">
                        <textarea name="text" form="myForm"></textarea><br /><br />
                        <input type="submit" class="btn btn-default" value="Submit New Post" />
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>