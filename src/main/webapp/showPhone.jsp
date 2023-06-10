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
    List<Phone>phones = phoneService.findAllPhones();
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
    <a class="navbar-brand" href="#">手机详情</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="http://localhost:8080/mrp/home">主界面<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/mrp/choose">手机推荐</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-13-finish-select-202207-6-1inch-starlight?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1656712888655" class="img-fluid" alt="iPhone 13">
        </div>
        <div class="col-md-6">
            <table class="table">
                <tr>
                    <th>名字</th>
                    <td>iPhone 13</td>
                </tr>
                <tr>
                    <th>手机厂家</th>
                    <td>Apple</td>
                </tr>
                <tr>
                    <th>处理器</th>
                    <td>A15 Bionic</td>
                </tr>
                <tr>
                    <th>屏幕</th>
                    <td>6.1英寸全面屏 OLCD</td>
                </tr>
                <tr>
                    <th>屏幕参数</th>
                    <td>2532*1170像素分辨率，460 ppi</td>
                </tr>
                <tr>
                    <th>存储规格</th>
                    <td>128GB, 256GB, 512GB</td>
                </tr>
                <tr>
                    <th>价格</th>
                    <td>¥5399, ¥6299, ¥8099</td>
                </tr>
                <tr>
                    <th>官方网站</th>
                    <td><u><a href="https://www.apple.com.cn/shop/buy-iphone/iphone-13/MLDV3CH/A">点击此处跳转官网</a></u></td>
                </tr>
                <tr>
                    <th>摄像头</th>
                    <td>1200 万像素双摄系统 (主摄及超广角)</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>

