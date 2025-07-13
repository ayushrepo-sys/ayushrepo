<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #eef2f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .management-wrapper {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        }

        .image-section {
            background: url('https://cdn.pixabay.com/photo/2016/04/15/18/05/computer-1331579_640.png') no-repeat center;
            background-size: cover;
            min-height: 100%;
        }

        .content-section {
            padding: 40px 30px;
            background-color: #ffffff;
        }

        h2 {
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 25px;
            text-align: center;
        }

        .table th,
        .table td {
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

        .btn-sm {
            min-width: 70px;
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
        <div class="col-lg-11">
            <div class="row management-wrapper">
                <!-- Left-side Image -->
                <div class="col-md-5 image-section d-none d-md-block"></div>

                <!-- Right-side Content -->
                <div class="col-md-7 content-section">
                    <h2>User Management</h2>

                    <c:if test="${not empty msg}">
                        <div class="alert alert-info">${msg}</div>
                    </c:if>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover">
                            <thead class="table-dark">
                                <tr>
                                    <th>NAME</th>
                                    <th>EMAIL</th>
                                    <th>PASSWORD</th>
                                    <th>MOBILE</th>
                                    <th>ROLE</th>
                                    <th>STATUS</th>
                                    <th>ACTION</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="viewuser" items="${user_master}">
                                    <tr>
                                        <td>${viewuser.name}</td>
                                        <td>${viewuser.email}</td>
                                        <td>${viewuser.password}</td>
                                        <td>${viewuser.mobile}</td>
                                        <td>${viewuser.role}</td>
                                        <td>${viewuser.status}</td>
                                        <td>
                                            <form action="manageusers" method="post" class="d-flex justify-content-center gap-2">
                                                <input type="hidden" name="email" value="${viewuser.email}" />
                                                <button type="submit" name="btn" value="delete" class="btn btn-danger btn-sm">Delete</button>
                                                <button type="submit" name="btn" value="edit" class="btn btn-primary btn-sm">Edit</button>
                                            </form>
                                        </td>
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
