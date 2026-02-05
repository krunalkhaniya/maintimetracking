<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">

<meta charset="UTF-8">
<title>Projects</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%@ include file="sidebar.jsp" %>

<div class="main">
<h1>Projects</h1>

<form class="card">
    <h3>Add Project</h3>
    Project Name:<br>
    <input type="text"><br><br>

    Client Name:<br>
    <input type="text"><br><br>

    Status:<br>
    <select>
        <option>Active</option>
        <option>Completed</option>
    </select><br><br>

    <button>Add Project</button>
</form>

<table>
<tr>
<th>Project</th>
<th>Client</th>
<th>Status</th>
</tr>
<tr>
<td>Design Project</td>
<td>Acme Inc.</td>
<td>Active</td>
</tr>
</table>
</div>

</body>
</html>
