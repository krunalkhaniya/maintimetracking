<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
 uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body { background:#f5f6fa; }
.card { border-radius:15px; border:none; }
.card-header {
    background:linear-gradient(135deg,#ff7a18,#ff9f1c);
    color:white; border-radius:15px 15px 0 0;
}
.form-control:focus {
    border-color:#ff7a18;
    box-shadow:0 0 0 .2rem rgba(255,122,24,.25);
}
.btn-orange {
    background:#ff7a18; color:white; font-weight:600;
    border:none; border-radius:8px; padding:10px;
}
.btn-orange:hover { background:#e66900; }
.link-orange { color:#ff7a18; font-weight:500; text-decoration:none; }
</style>
</head>

<body>
<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-lg-6 col-md-8">

<div class="card shadow-lg">
<div class="card-header text-center">
<h4>Forgot Password</h4>
<small>Password recovery</small>
</div>

<div class="card-body p-4">

<c:if test="${not empty success}">
<div class="alert alert-success text-center">${success}</div>
</c:if>
<c:if test="${not empty error}">
<div class="alert alert-danger text-center">${error}</div>
</c:if>

<form action="sendResetLink" method="post">

<input class="form-control mb-3" type="email" name="email"
       placeholder="Registered Email" required>

<div class="d-grid mb-3">
<button class="btn btn-orange">Send Reset Link</button>
</div>

<div class="text-center">
<a href="login" class="link-orange">← Back to Login</a>
</div>

</form>
</div>
</div>

</div>
</div>
</div>
</body>
</html>
