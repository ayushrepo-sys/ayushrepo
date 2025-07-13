<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fusers Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #eef2f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .management-wrapper {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(0,0,0,0.1);
        }

        .image-side {
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgU8Ijm0t1-TxXB0qJQPEmNbVyMlgmS9TRCw&s') no-repeat center;
            background-size: cover;
            min-height: 100%;
        }

        .table-side {
            padding: 40px 30px;
            background-color: #fff;
        }

        h2 {
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
            background-color: #f8f9fa;
        }

        .alert {
            font-weight: bold;
            text-align: center;
        }

        @media (max-width: 768px) {
            .image-side {
                display: none;
            }
        }
    </style>
</head>
<body>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="row management-wrapper">
                <!-- Left Image Section -->
                <div class="col-md-5 image-side d-none d-md-block"></div>

                <!-- Right Table Section -->
                <div class="col-md-7 table-side">
                    <h2>Fusers Management</h2>

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
                                <c:forEach var="f" items="${fusers}">
                                    <tr>
                                        <td>${f.name}</td>
                                        <td>${f.email}</td>
                                        <td>${f.mobile}</td>
                                        <td>${f.role}</td>
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
