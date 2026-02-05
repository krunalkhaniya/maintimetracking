<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="sidebar.jsp" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="c"
 uri="jakarta.tags.core" %>

<div class="main">

<h3>Tasks</h3>

<div class="card p-3">

<form action="tasks/save" method="post">

    <input class="form-control mb-2"
           name="title"
           placeholder="Task Title">

    <input class="form-control mb-2"
           name="moduleId"
           placeholder="Module ID">

    <input class="form-control mb-2"
           name="estimatedHours"
           placeholder="Estimated Hours">

    <button class="btn btn-primary">
        Save Task
    </button>

</form>

<hr>

<table class="table table-bordered">

<tr>
<th>ID</th><th>Title</th><th>Module</th><th>Hours</th>
</tr>

<c:forEach var="t" items="${tasks}">
<tr>
<td>${t.taskId}</td>
<td>${t.title}</td>
<td>${t.moduleId}</td>
<td>${t.estimatedHours}</td>
</tr>
</c:forEach>

</table>

</div>
</div>
