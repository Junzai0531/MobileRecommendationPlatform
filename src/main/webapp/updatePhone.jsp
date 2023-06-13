<%@ page import="entity.Phone" %>
<%@ page import="java.util.List" %>
<%@ page import="service.PhoneServiceImpl" %>
<%@ page import="service.PhoneService" %><%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/6/13
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

<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h3>编辑手机信息</h3>
            <form action="/mrp/updatephone" method="post">
                <%
                    for (Phone phone: phones) {
                %>
                <div class="form-group">
                    <label>手机名</label>
                    <input type="text" name="phone_name" class="form-control" value="<%= phone.getPhone_name() %>" required>
                </div>
                <div class="form-group">
                    <label>手机厂商</label>
                    <input type="text" name="phone_manufacturer" class="form-control" value="<%= phone.getPhone_manufacturer() %>" required>
                </div>
                <div class="form-group">
                    <label>处理器</label>
                    <input type="text" name="chip" class="form-control" value="<%= phone.getChip() %>"  required>
                </div>
                <div class="form-group">
                    <label>存储规格</label>
                    <input type="text" name="storage" class="form-control" value="<%= phone.getStorage() %>"  required>
                </div>
                <div class="form-group">
                    <label>价格</label>
                    <input type="text" name="price" class="form-control" value="<%= phone.getPrice() %>"  required>
                </div>
                <div class="form-group">
                    <label>相机参数</label>
                    <input type="text" name="camera" class="form-control" value="<%= phone.getCamera() %>"  required>
                </div>
                <div class="form-group">
                    <label>官网链接</label>
                    <input type="text" name="link" class="form-control" value="<%= phone.getLink() %>"  required>
                </div>
                <div class="form-group">
                    <label>图片链接</label>
                    <input type="text" name="picture_link" class="form-control" value="<%= phone.getPicture_link() %>"  required>
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


