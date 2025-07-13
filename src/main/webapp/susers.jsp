<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Susers Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .management-card {
            border-radius: 15px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .image-section {
            background: url('https://www.ptecheducation.com/assets/images/login.png') no-repeat center;
            background-size: cover;
            min-height: 100%;
        }

        .content-section {
            padding: 40px 30px;
            background-color: #ffffff;
        }

        .content-section h2 {
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 25px;
            text-align: center;
        }

        .table th, .table td {
            vertical-align: middle;
            text-align: center;
        }

        .table-hover tbody tr:hover {
            background-color: #f7f7f7;
        }

        .alert {
            font-weight: bold;
            text-align: center;
        }

        @media (max-width: 768px) {
            .image-section {
                display: none;
            }
        }
    </style>
</head>
<body>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="row management-card">
                <!-- Image Column -->
                <div class="col-md-5 image-section d-none d-md-block"></div>

                <!-- Table Column -->
                <div class="col-md-7 content-section">
                    <h2>Susers Management</h2>

                    <c:if test="${not empty msg}">
                        <div class="alert alert-info">${msg}</div>
                    </c:if>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover">
                            <thead class="table-dark">
                                <tr>
                                    <th>NAME</th>
                                    <th>EMAIL</th>
                                    <th>MOBILE</th>
                                    <th>ROLE</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="s" items="${susers}">
                                    <tr>
                                        <td>${s.name}</td>
                                        <td>${s.email}</td>
                                        <td>${s.mobile}</td>
                                        <td>${s.role}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
