<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://"
      + request.getServerName() + ":" + request.getServerPort()
      + path + "/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色管理</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
body {
	padding-top: 60px;
	/* 60px to make the container go all the way to the bottom of the topbar */
}
</style>
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link rel="shortcut icon" href="ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#">Nutzdemo-shiro</a>
        <div class="nav-collapse">
          <ul class="nav">
            <li><a href="user/all">用户管理</a></li>
            <li class="active"><a href="role/all">角色管理</a></li>
            <li><a href="permission/all">权限管理</a></li>
          </ul>
          <ul class="nav pull-right">
            <li><a href="logout">登出</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
  </div>
  <div class="container">
  <a href="role/p_add" class="btn btn-primary">添加角色</a><br/>
  <table class="table table-striped">
    <thead>
    <tr>
        <th>名称</th>
        <th>说明</th>
        <th>编辑</th>
        <th>删除</th>
      </tr>
    </thead>
    <c:forEach var="role" items="${obj}">
      <tr>
        <td><a href="role/view?id=${role.id}">${role.name}</a></td>
        <td>${role.description}</td>
        <td><a href="role/view?id=${role.id}"><i class="icon-edit"></i>&nbsp;${msg.edit}</a></td>
        <td><a href="role/delete?id=${role.id}"><i class="icon-remove"></i>&nbsp;${msg.delete}</a></td>
      </tr>
    </c:forEach>
  </table>
  </div>
  <script src="js/jquery-1.7.2.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>