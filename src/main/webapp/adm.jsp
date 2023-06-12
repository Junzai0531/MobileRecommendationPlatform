<%@ page import="entity.Phone" %>
<%@ page import="java.util.List" %>
<%@ page import="service.PhoneServiceImpl" %>
<%@ page import="service.PhoneService" %><%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/6/12
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>

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
    <a class="navbar-brand" href="/mrp/home">管理员</a>
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
                <a class="nav-link" href="/mrp/">退出<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<h2>手机信息管理</h2>

<table border="1">
    <tr>
        <th>手机ID</th>
        <th>手机名称</th>
        <th>手机厂商</th>
        <th>芯片</th>
        <th>存储规格</th>
        <th>价格</th>
        <th>相机参数</th>
        <th>官网链接</th>
        <th>图片链接</th>
        <th>操作</th>
    </tr>
    <%
        // 在此处添加你的数据库连接和查询代码，查询手机信息
        PhoneService phoneService = new PhoneServiceImpl();
        List<Phone> phones = phoneService.findAllPhones();
        // 使用循环将查询的结果添加到表格中，例如：
        for (Phone phone : phones) {
    %>
    <tr>
        <td><%= phone.getId() %></td>
        <td><%= phone.getPhone_name() %></td>
        <td><%= phone.getPhone_manufacturer() %></td>
        <td><%= phone.getChip() %></td>
        <td><%= phone.getStorage() %></td>
        <td><%= phone.getPrice() %></td>
        <td><%= phone.getCamera() %></td>
        <td><%= phone.getLink() %></td>
        <td><%= phone.getPicture_link() %></td>
        <td>
            <a href="EditPhoneServlet?id=<%= phone.getId() %>"><u>编辑</u></a>
            <a href="/mrp/delphone?id=<%= phone.getId() %>"><u>删除</u></a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
