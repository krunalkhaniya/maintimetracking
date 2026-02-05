<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="sidebar.jsp" %>
<%@ taglib prefix="c"
 uri="jakarta.tags.core" %>

<%@ include file="sidebar.jsp" %>

<div class="main">

<h3>Modules</h3>

<div class="card p-3">

<form action="modules/save" method="post">

    <input class="form-control mb-2"
           name="moduleName"
           placeholder="Module Name">

    <input class="form-control mb-2"
           name="projectId"
           placeholder="Project ID">

    <input class="form-control mb-2"
           name="estimatedHours"
           placeholder="Estimated Hours">

    <button class="btn btn-primary">
        Save Module
    </button>

</form>

<hr>

<table class="table table-bordered">

<tr>
<th>ID</th><th>Name</th><th>Project</th><th>Hours</th>
</tr>


<tr>
<td>${m.moduleId}</td>
<td>${m.moduleName}</td>
<td>${m.projectId}</td>
<td>${m.estimatedHours}</td>
</tr>


</table>

</div>
</div>
