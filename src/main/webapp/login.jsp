<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
            height: 100vh;
        }
        .card {
            border-radius: 1rem;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .login-img {
            background-image: url('https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg');
            background-size: cover;
            background-position: center;
        }
        .form-container {
            padding: 40px;
        }
    </style>
</head>
<body>

<div class="container d-flex justify-content-center align-items-center h-100">
    <div class="card w-100" style="max-width: 850px;">
        <div class="row g-0">
            <!-- Left Image -->
            <div class="col-md-6 login-img d-none d-md-block"></div>

            <!-- Right Form -->
            <div class="col-md-6 bg-white">
                <div class="form-container">
                    <h3 class="text-center mb-4">Login</h3>

                    <!-- Display error message -->
                    <%
                        String error = request.getParameter("error");
                        if (error != null) {
                    %>
                        <div class="alert alert-danger" role="alert">
                            Invalid username or password!
                        </div>
                    <%
                        }
                    %>

                    <form action="/login" method="post">
                        <div class="mb-3">
                            <label for="username" class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" id="username" required>
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" id="password" required>
                        </div>

                        <button type="submit" class="btn btn-primary w-100">Login</button>
                    </form>

                    <p class="text-center mt-3">
                        Don't have an account? <a href="register.jsp">Register here</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
${msg}
</body>
</html>
