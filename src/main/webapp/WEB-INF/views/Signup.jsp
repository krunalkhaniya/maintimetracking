<%@ taglib prefix="c"
 uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>

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
<div class="container mt-5 mb-5">
<div class="row justify-content-center">
<div class="col-lg-6 col-md-8">

<div class="card shadow-lg">
<div class="card-header text-center">
<h4>User Registration</h4>
</div>

<div class="card-body p-4">
<form action="register" method="post" enctype="multipart/form-data">



<!-- First & Last Name -->
<input class="form-control mb-3" name="firstName" placeholder="First Name" required>
<input class="form-control mb-3" name="lastName" placeholder="Last Name" required>

<!-- Email & Password -->
<input class="form-control mb-3" type="email" name="email" placeholder="Email" required>
<input class="form-control mb-3" type="password" name="password" placeholder="Password" required>
<!-- Employee ID -->
<input class="form-control mb-3"
       name="employeeId"
       placeholder="Employee ID"
       required>
<!-- Gender -->
<div class="mb-3">
<label class="form-label d-block">Gender</label>
<input type="radio" name="gender" value="MALE" required> Male
<input type="radio" name="gender" value="FEMALE" class="ms-3"> Female
<input type="radio" name="gender" value="OTHER" class="ms-3"> Other
</div>

<!-- DOB -->
<input class="form-control mb-3" type="date" name="dob" required>

<!-- Contact -->
<input class="form-control mb-3"
       name="contactNum"
       pattern="[0-9]{10}"
       maxlength="10"
       placeholder="Contact Number"
       required>

<!-- Profile Picture -->
<input class="form-control mb-4"
       type="file"
       name="profilePic"
       accept="image/*"
       required>

<div class="d-grid">
<button class="btn btn-orange">Register</button>
</div>

<div class="text-center mt-3">
<span class="text-muted">Already have an account?</span>
<a href="login" class="link-orange"> Login</a>
</div>

</form>
</div>
</div>

</div>
</div>
</div>
</body>
</html>
