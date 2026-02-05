<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="sidebar.jsp" %>

<div class="main">

<h3>Assign Project</h3>

<div class="card p-3">

<form action="assign/project" method="post">

<input class="form-control mb-2"
       name="userId"
       placeholder="Manager ID">

<input class="form-control mb-2"
       name="projectId"
       placeholder="Project ID">

<button class="btn btn-success">
Assign
</button>

</form>

</div>
</div>
