<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="c"
 uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
    body {
        background: #fff3e0;
    }

    .signup-card {
        max-width: 450px;
        margin: 50px auto;
        padding: 25px;
        border-top: 6px solid #ff8c00;
    }

    h3 {
        color: #ff8c00;
        font-weight: 600;
    }

    .btn-primary {
        background-color: #ff8c00;
        border-color: #ff8c00;
    }

    .btn-primary:hover {
        background-color: #e67600;
        border-color: #e67600;
    }
</style>

</head>

<body>
<div class="container">
    <div class="login-card">
        <h3 class="text-center mb-4">Login</h3>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>

        <form action="loginUser" method="post">
            <div class="mb-3">
                <label class="form-label">Email Address</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">Login</button>

            <p class="text-center mt-3">
                Don’t have an account? <a href="signup">Sign Up</a>
            </p>

            <p class="text-center">
                Forgot Password? <a href="forgetpassword">Click Here</a>
            </p>
        </form>
    </div>
</div>
</body>
</html>

