<%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/5/24
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Phone Recommendation</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
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
            <li class="nav-item active">
                <a class="nav-link" href="/mrp/">退出<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
    <h1>手机推荐</h1>
    <form action="recommendation" method="POST">
        <div class="form-group">
            <label for="manufacturer">手机厂商:</label>
            <select class="form-control" id="manufacturer" name="manufacturer">
                <option value="请选择">请选择</option>
                <option value="Apple">苹果</option>
                <option value="Huawei">华为</option>
            </select>
        </div>
        <div class="form-group">
            <label for="processor">处理器:</label>
            <select class="form-control" id="processor" name="processor">
                <option value="请选择">请选择</option>
                <option value="A15">A15仿生芯片</option>
                <option value="Kylin9000">麒麟 9000</option>
            </select>
        </div>
        <div class="form-group">
            <label for="budget">预算:</label>
            <select class="form-control" id="budget" name="camera">
                <option value="请选择">请选择</option>
                <option value="1000">1000以内</option>
                <option value="1000-2000">1000-2000</option>
                <option value="2000-3000">20000-3000</option>
            </select>
        </div>
        <div class="form-group">
            <label for="storage">存储规格:</label>
            <select class="form-control" id="storage" name="storage">
                <option value="请选择">请选择</option>
                <option value="128G">128G</option>
                <option value="256G">256G</option>
            </select>
        </div>
        <div class="form-group">
            <label for="resolution">屏幕分辨率:</label>
            <select class="form-control" id="resolution" name="resolution">
                <option value="请选择">请选择</option>
                <option value="1080p">1080p</option>
                <option value="2k">2k</option>
            </select>
        </div>
        <div class="form-group">
            <label for="camera">摄像头:</label>
            <select class="form-control" id="camera" name="camera">
                <option value="请选择">请选择</option>
                <option value="1200w">1200w</option>
                <option value="5000w">5000w</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">提交</button>
    </form>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
