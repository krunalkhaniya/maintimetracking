<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>

<title>Settings</title>

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<!-- Sidebar -->
<%@ include file="sidebar.jsp" %>

<!-- Main Content -->
<div class="main">

    <!-- Page Title -->
    <h1 class="page-title">Settings</h1>

    <!-- Messages -->
    <c:if test="${not empty success}">
        <div class="card" style="background:#d1fae5;color:#065f46;">
            ${success}
        </div>
    </c:if>

    <c:if test="${not empty error}">
        <div class="card" style="background:#fee2e2;color:#991b1b;">
            ${error}
        </div>
    </c:if>

    <!-- Settings Card -->
    <div class="card" style="max-width:450px;">

        <form action="${pageContext.request.contextPath}/settings/update"
              method="post">

            <!-- Hidden ID -->
            <input type="hidden"
                   name="userId"
                   value="${user.userId}">

            <!-- Name -->
            <label>Name</label>

            <input type="text"
                   name="firstName"
                   value="${user.firstName}"
                   required>

            <!-- Email -->
            <label>Email</label>

            <input type="email"
                   name="email"
                   value="${user.email}"
                   required>

            <!-- Contact -->
            <label>Contact</label>

            <input type="text"
                   name="contactNum"
                   value="${user.contactNum}">

            <!-- Password -->
            <label>New Password</label>

            <input type="password"
                   name="password"
                   placeholder="Leave blank if unchanged">

            <!-- Button -->
            <button type="submit"
                    class="btn"
                    style="width:100%;margin-top:10px;">

                Save Changes

            </button>

        </form>

    </div>

</div>

</body>
</html>
