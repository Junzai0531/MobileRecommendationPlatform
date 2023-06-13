<%--
  Created by IntelliJ IDEA.
  User: ruanzijun
  Date: 2023/5/24
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    .register-container {
      max-width: 500px;
      margin: auto;
      padding: 20px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="register-container">
    <h2>用户注册</h2>
    <form action="/mrp/register" method="post">
      <div class="form-group">
        <label for="username">用户名:</label>
        <input type="text" class="form-control" id="username" name="username">
      </div>
      <div class="form-group">
        <label for="password">密码:</label>
        <input type="password" class="form-control" id="password" name="password">
      </div>
      <div class="form-group">
        <label for="confirmPassword">确认密码:</label>
        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword">
      </div>
      <div class="form-group">
        <label for="phone">手机号:</label>
        <input type="text" class="form-control" id="phone" name="phone_number">
      </div>
      <div class="form-group">
        <label for="email">邮箱:</label>
        <input type="email" class="form-control" id="email" name="email">
      </div>
      <div class="form-group">
        <label for="age">年龄:</label>
        <input type="number" class="form-control" id="age" name="age">
      </div>
      <div class="form-group">
        <label>性别:</label>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="genderMale" value="1">
          <label class="form-check-label" for="genderMale">
            男
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="0">
          <label class="form-check-label" for="genderFemale">
            女
          </label>
        </div>
      </div>
      <button type="submit" class="btn btn-primary">注册</button>
    </form>
  </div>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>

