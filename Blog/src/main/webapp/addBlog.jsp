<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@include file="template/head.jsp" %>
</head>
<body>
<%@include file="template/navbar.jsp" %>
<form action="/addBlog" method="post" class="row g-3">

        <div class="col-sm-4 offset-4">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Title</label>
                <input name="title" type="text" class="form-control" id="exampleFormControlInput1" >
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Content</label>
                <textarea name="content" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="form-group">
                <button class="btn btn-success">OK</button>
            </div>
        </div>

</form>>

</body>
</html>
