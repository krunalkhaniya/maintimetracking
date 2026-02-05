<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">

<meta charset="UTF-8">
<title>Users</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%@ include file="sidebar.jsp" %>

<div class="main">
<h1>Users</h1>

<table>
<tr>
<th>Name</th>
<th>Email</th>
<th>Role</th>
</tr>
<tr>
<td>Admin</td>
<td>admin@mail.com</td>
<td>Admin</td>
</tr>
<tr>
<td>Employee</td>
<td>user@mail.com</td>
<td>User</td>
</tr>
</table>

</div>
</body>
</html>
