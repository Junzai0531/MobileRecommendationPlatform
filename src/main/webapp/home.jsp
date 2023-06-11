<%@ page import="service.PhoneService" %>
<%@ page import="service.PhoneServiceImpl" %>
<%@ page import="entity.Phone" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/5/21
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Phone Gallery</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <style>
        .card-img {
            width: 100%;  /* 设置宽度为100%，即卡片的宽度 */
            height: 250px;  /* 设置固定的高度 */
            object-fit: cover;  /* 设置图片保持原始的宽高比 */
        }
        .card-container {
            height: 450px;  /* 设置外层div的高度 */
        }

        .card {
            height: 100%;  /* 让卡片填充整个外层div */
            overflow: auto; /* 如果内容超出卡片的高度，显示滚动条 */
        }
    </style>

</head>
<body>
<!-- Navigation -->
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

<div class="container">
    <div class="row">
        <%
            PhoneService phoneService = new PhoneServiceImpl();
            List<Phone> phones = phoneService.findAllPhones();
            for(Phone phone:phones){
        %>
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card-container">
                <div class="card h-100">
                    <img class="card-img-top card-img" src="<%= phone.getPicture_link() %>" alt="Phone 1">
                    <div class="card-body">
                        <h5 class="card-title"> <%= phone.getPhone_name() %></h5>
                        <p class="card-text"><%= phone.getPhone_name() + "  666" %></p>
                    </div>
                    <div class="card-footer">
                        <h5><%=phone.getPrice()%></h5>
                        <a href="/mrp/show?id=<%= phone.getId() %>" class="btn btn-primary">查看详情</a>
                    </div>
                </div>
            </div>
        </div>

        <%
            }
        %>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>


