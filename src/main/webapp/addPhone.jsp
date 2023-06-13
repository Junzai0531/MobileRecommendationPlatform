<%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/6/12
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="addPhone.css">
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
                <a class="nav-link" href="/mrp/adm">返回管理员主界面<span class="sr-only">(current)</span></a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/mrp/">退出<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<form action="/mrp/addphone" method="post">
    <label for="id">手机ID:</label><br>
    <input type="text" id="id" name="id"><br>

    <label for="phone_name">手机名称:</label><br>
    <input type="text" id="phone_name" name="phone_name"><br>

    <label for="phone_manufacturer">手机厂商:</label><br>
    <input type="text" id="phone_manufacturer" name="phone_manufacturer"><br>

    <label for="chip">芯片:</label><br>
    <input type="text" id="chip" name="chip"><br>

    <label for="storage">存储规格:</label><br>
    <input type="text" id="storage" name="storage"><br>

    <label for="price">价格:</label><br>
    <input type="text" id="price" name="price"><br>

    <label for="camera">摄像头参数:</label><br>
    <input type="text" id="camera" name="camera"><br>

    <label for="link">官网链接:</label><br>
    <input type="text" id="link" name="link"><br>

    <label for="picture_link">图片链接:</label><br>
    <input type="text" id="picture_link" name="picture_link"><br>

    <input type="submit" value="添加手机">
</form>

</body>
</html>