<%@ page import="service.UserService" %>
<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="service.UserServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/6/13
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    UserService userService = new UserServiceImpl();

    String id = request.getParameter("id");
    List<User> users = userService.selectUserById(id);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Phone Information</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/mrp/adm">管理员</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/mrp/adm">返回手机信息管理<span class="sr-only">(current)</span></a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/mrp/">退出<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h3>编辑用户信息</h3>
            <form action="/mrp/updateuser" method="post">
                <%
                    for (User user: users) {
                %>
                <div class="form-group">
                    <label>用户名</label>
                    <input type="text" name="username" class="form-control" value="<%= user.getUsername() %>" required>
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input type="text" name="password" class="form-control" value="<%= user.getPassword() %>" required>
                </div>
                <div class="form-group">
                    <label>手机号</label>
                    <input type="text" name="phone_number" class="form-control" value="<%= user.getPhone_number() %>"  required>
                </div>
                <div class="form-group">
                    <label>电子邮箱个</label>
                    <input type="text" name="email" class="form-control" value="<%= user.getEmail() %>"  required>
                </div>
                <div class="form-group">
                    <label>年龄</label>
                    <input type="text" name="age" class="form-control" value="<%= user.getAge() %>"  required>
                </div>
                <div class="form-group">
                    <label>性别</label>
                    <input type="text" name="gender" class="form-control" value="<%= user.getGender() %>"  required>
                </div>
                <div class="form-group">
                    <label>是否为管理员</label>
                    <input type="text" name="administrator" class="form-control" value="<%= user.getAdministrator() %>"  required>
                </div>
                <%
                    }
                %>
                <button type="submit" class="btn btn-primary">提交修改</button>
            </form>
        </div>
    </div>
</div>
<!-- Add Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
