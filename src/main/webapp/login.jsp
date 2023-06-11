<%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/5/21
  Time: 00:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<div id="login-container">
  <h2>手机推荐平台</h2>
  <form id="login-form" action="/mrp/login" method="post">
    <input type="text" id="username" name="username" placeholder="请输入用户名" required><br/>
    <input type="password" id="password" name="password" placeholder="请输入密码" required><br/>
    <input type="submit" id="login" value="登录">
    <input type="button" id="register" value="注册" onClick="window.location='register.jsp'">
  </form>
</div>
<script src="login.js"></script>
</body>
</html>

