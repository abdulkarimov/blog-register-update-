<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
    <title>Login</title>
    <%@include file="template/head.jsp" %>
</head>
<body>
<%@include file="template/navbar.jsp" %>

<div class="containter mt-5">
    <div class="row">
        <div class="col-sm-4 offset-4">
            <%
                Object error = request.getParameter("error");
                if (error != null && error.equals("1")){
            %>
            <div class="alert alert-danger ">
                <strong>User doesn`t exist!</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
                }
            %>

        </div>
    </div>
</div>
<form action="/userData" method="post" class="row g-3">
    <div class="col-md-6">
        <label for="inputEmail4" class="form-label" >Email</label>
        <input type="email" class="form-control" id="inputEmail4"  required value="<%=user.getEmail()%> " name="email" readonly>
        <%--request.getSession().getAttribute("USER") != null ? request.getAttribute("email") : ""--%>
    </div>

    <div class="col-12">
        <label for="inputAddress" class="form-label">Full_Name</label>
        <input type="text" class="form-control" id="inputAddress" name="full_name">
    </div>

    <div class="col-md-6">
        <label  class="form-label">Password</label>
        <input type="password" class="form-control" name="password">
    </div>

    <div class="form-group">
        <button class="btn btn-success">OK</button>
    </div>
</form>
</body>
</html>
