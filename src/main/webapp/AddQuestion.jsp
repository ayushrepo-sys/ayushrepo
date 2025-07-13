<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Question</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border: none;
            border-radius: 1rem;
        }
        .form-control, .form-select {
            border-radius: 0.5rem;
        }
        .form-label {
            font-weight: 500;
        }
        .top-image {
            max-width: 100px;
            display: block;
            margin: 0 auto 20px auto;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card shadow p-4">
        <img src="https://toppng.com/uploads/preview/add-new-questions-add-question-icon-1156298351152eixf9qfh.png"
             alt="Add Question Icon" class="top-image">
        <h3 class="text-center mb-4">Add New Question</h3>
        <form action="/AddQuestion" method="post">
            <div class="mb-3">
                <label for="question" class="form-label">Question</label>
                <textarea class="form-control" id="question" name="Question" rows="3" placeholder="Enter the question..." required></textarea>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="optionA" class="form-label">Option A</label>
                    <input type="text" class="form-control" id="optionA" name="Option_A" placeholder="Enter Option A" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="optionB" class="form-label">Option B</label>
                    <input type="text" class="form-control" id="optionB" name="Option_B" placeholder="Enter Option B" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="optionC" class="form-label">Option C</label>
                    <input type="text" class="form-control" id="optionC" name="Option_C" placeholder="Enter Option C" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="optionD" class="form-label">Option D</label>
                    <input type="text" class="form-control" id="optionD" name="Option_D" placeholder="Enter Option D" required>
                </div>
            </div>
            <div class="mb-4">
                <label for="answer" class="form-label">Correct Answer</label>
                <select class="form-select" id="answer" name="Answer" required>
                    <option value="">Select Correct Answer</option>
                    <option value="A">Option A</option>
                    <option value="B">Option B</option>
                    <option value="C">Option C</option>
                    <option value="D">Option D</option>
                </select>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-primary btn-lg rounded-pill">Add Question</button>
            </div>
        </form>
        <!-- Message Placeholder -->
        <div class="mt-3 text-center text-success fw-bold">
            ${msg}
        </div>
    </div>
</div>
</body>
</html>
