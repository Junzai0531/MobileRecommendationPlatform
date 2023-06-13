<%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/6/13
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="service.UserServiceImpl" %>
<%@ page import="service.UserService" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>管理员页面</title>
  <link rel="stylesheet" type="text/css" href="adm.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/mrp/adm"/>管理员</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/mrp/addphone">添加手机<span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/mrp/adm">手机信息管理<span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/mrp/">退出<span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
</nav>

<h2>用户信息管理</h2>

<table border="1">
  <tr>
    <th>用户名</th>
    <th>密码</th>
    <th>手机号码</th>
    <th>电子邮箱</th>
    <th>年龄</th>
    <th>性别</th>
    <th>是否为管理员</th>
    <th>操作</th>
  </tr>
  <%
    // 在此处添加你的数据库连接和查询代码，查询手机信息
    UserService userService = new UserServiceImpl();
    List<User> users = userService.findUser();
    // 使用循环将查询的结果添加到表格中，例如：
    for (User user: users) {
  %>
  <tr>
    <td><%= user.getUsername() %></td>
    <td><%= user.getPassword() %></td>
    <td><%= user.getPhone_number() %></td>
    <td><%= user.getEmail() %></td>
    <td><%= user.getAge() %></td>
    <td><%= user.getGender().equals("1") ? "男" : "女" %></td>
    <td><%= user.getAdministrator() == 1 ? "是" : "否" %></td>
    <td>
      <a href="/mrp/updateuser?id=<%= user.getId() %>"><u>编辑</u></a>
      <a href="/mrp/deluser?id=<%= user.getId() %>"><u>删除</u></a>
    </td>
  </tr>
  <%
    }
  %>
</table>
</body>
</html>
