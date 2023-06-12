<%@ page import="service.PhoneService" %>
<%@ page import="service.PhoneServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Phone" %><%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/5/24
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    PhoneService phoneService = new PhoneServiceImpl();

    String id = request.getParameter("id");
    List<Phone> phones = phoneService.selectPhone(id);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Phone Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/mrp/home">📱</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/mrp/home">主界面<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/mrp/choose">手机推荐</a>
            </li>
        </ul>
    </div>
</nav>

<%
    for(Phone phone: phones) {
%>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <img src="<%= phone.getPicture_link() %>" class="img-fluid" alt="iPhone 13">
        </div>
        <div class="col-md-6">
            <table class="table">
                <tr>
                    <th>名字</th>
                    <td><%= phone.getPhone_name() %></td>
                </tr>
                <tr>
                    <th>手机厂家</th>
                    <td><%= phone.getPhone_manufacturer() %></td>
                </tr>
                <tr>
                    <th>处理器</th>
                    <td><%= phone.getChip() %></td>
                </tr>
<%--                <tr>--%>
<%--                    <th>屏幕</th>--%>
<%--                    <td>6.1英寸全面屏 OLCD</td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <th>屏幕参数</th>--%>
<%--                    <td>2532*1170像素分辨率，460 ppi</td>--%>
<%--                </tr>--%>
                <tr>
                    <th>存储规格</th>
                    <td><%= phone.getStorage() %></td>
                </tr>
                <tr>
                    <th>价格</th>
                    <td><%= phone.getPrice() %></td>
                </tr>
                <tr>
                    <th>官方网站</th>
                    <td><u><a href="<%= phone.getLink() %>">点击此处跳转官网</a></u></td>
                </tr>
                <tr>
                    <th>摄像头</th>
                    <td><%= phone.getCamera() %></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<%
    }
%>
</body>
</html>

