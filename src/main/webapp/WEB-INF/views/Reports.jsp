<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">

<meta charset="UTF-8">
<title>Reports</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%@ include file="sidebar.jsp" %>

<div class="main">
<h1>Reports</h1>

<div class="cards">
<div class="card">
<h3>Today</h3>
<p>03:45 hrs</p>
</div>

<div class="card">
<h3>This Week</h3>
<p>12:30 hrs</p>
</div>

<div class="card">
<h3>This Month</h3>
<p>28:15 hrs</p>
</div>
</div>

<table>
<tr>
<th>Date</th>
<th>Project</th>
<th>Duration</th>
</tr>
<tr>
<td>02-Feb-2026</td>
<td>Design Project</td>
<td>02:30</td>
</tr>
</table>

</div>
</body>
</html>
