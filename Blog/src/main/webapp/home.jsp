<%@ page import="com.example.Blog.entity.Test" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="template/head.jsp"%>
</head>
<body>
<div class="container-fluid">
    <%@include file="template/navbar.jsp"%>
</div>

<%
    List<Test> tt = (List<Test>) request.getAttribute("test");
    tt.stream().forEach(System.out::println);
    for (Test u : tt ) {
%>
<div class="card">
    <div class="card-body">
        <h5 class="card-title"><%=u.getTitle() %></h5>
        <p class="card-text"> <%=u.getContent()%></p>
        <h6 class="card-subtitle mb-2 text-muted"><%=u.getName()%>       <%=u.getDate()%></h6>
    </div>
</div>

<%
    }
%>
</body>
</html>
