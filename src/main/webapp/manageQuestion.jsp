<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Manage Questions</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 1rem;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .btn-sm {
            padding: 0.25rem 0.5rem;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="card shadow p-4">
            <h3 class="text-center mb-4">📝 Manage Questions</h3>

            <div class="table-responsive">
                <table class="table table-bordered table-hover align-middle text-center">
                    <thead class="table-primary">
                        <tr>
                            <th>#</th>
                            <th>Question</th>
                            <th>Option A</th>
                            <th>Option B</th>
                            <th>Option C</th>
                            <th>Option D</th>
                            <th>Answer</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${manage_question}">
                            <tr>
                                <td>${user.sno}</td>
                                <td>${user.Question}</td>
                                <td>${user.Option_A}</td>
                                <td>${user.Option_B}</td>
                                <td>${user.Option_C}</td>
                                <td>${user.Option_D}</td>
                                <td><span class="badge bg-success">${user.Answer}</span></td>
                                <td>
                                    <form method="post" action="manageQuestion" class="d-flex justify-content-center gap-1">
                                        <input type="hidden" name="sno" value="${user.sno}" />
                                        <button type="submit" name="btn" value="edit" class="btn btn-warning btn-sm">
                                            <i class="bi bi-pencil-square"></i>
                                        </button>
                                        <button type="submit" name="btn" value="delete" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this question?')">
                                            <i class="bi bi-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>
