<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="sidebar.jsp" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c"
 uri="jakarta.tags.core" %>



<div class="main">

<h3>Project Status</h3>

<div class="card p-3">

<form action="status/save" method="post">

<input class="form-control mb-2"
       name="status"
       placeholder="Status Name">

<button class="btn btn-primary">
Save Status
</button>

</form>

<hr>

<table class="table table-bordered">

<tr>
<th>ID</th><th>Status</th>
</tr>

<c:forEach var="s" items="${statusList}">
<tr>
<td>${s.projectStatusID}</td>
<td>${s.status}</td>
</tr>
</c:forEach>

</table>

</div>
</div>
