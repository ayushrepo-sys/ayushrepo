<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f2f4f7;
        }
        .dashboard-card {
            max-width: 600px;
            margin: auto;
            border-radius: 1rem;
        }
        .score-box {
            font-size: 1.25rem;
        }
        .btn-custom {
            border-radius: 30px;
            padding: 10px 25px;
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card shadow p-4 dashboard-card bg-white">
        <h2 class="text-center mb-4 text-primary"><i class="bi bi-mortarboard-fill me-2"></i>Student Dashboard</h2>

        <c:choose>
            <c:when test="${not empty score}">
                <div class="alert alert-success text-center score-box">
                    🎉 Your Last Quiz Score: <strong>${score}</strong> / <strong>${total}</strong>
                </div>
            </c:when>
            <c:otherwise>
                <div class="alert alert-warning text-center">
                    <i class="bi bi-exclamation-triangle-fill me-2"></i> ${message}
                </div>
            </c:otherwise>
        </c:choose>

        <div class="text-center mt-4">
            <a href="/exam" class="btn btn-primary btn-custom">
                <i class="bi bi-arrow-repeat me-1"></i> Take Quiz Again
            </a>
        </div>
    </div>
</div>
</body>
</html>
