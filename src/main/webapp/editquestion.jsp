<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Question</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f2f4f7;
        }
        .card {
            border: none;
            border-radius: 1rem;
        }
        .form-label {
            font-weight: 500;
        }
        .form-control, .form-select {
            border-radius: 0.5rem;
        }
        .btn-primary {
            border-radius: 2rem;
            font-weight: 500;
            padding: 10px;
        }
        .message-box {
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
            color: green;
        }
        .header-image {
            width: 100%;
            max-width: 150px;
            margin: 0 auto 20px;
            display: block;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card shadow p-5">
        <!-- Header Image -->
        <img src="https://media.istockphoto.com/id/1022470750/vector/vector-question-icon-on-blue-background-flat-image-question-with-long-shadow-layers-grouped.jpg?res=612x612&w=0&k=20&c=Vi0r6-37wWTvjmTI6J77Px4_gkXyK9DCaiDY3UbOrBw=" alt="Edit Question" class="header-image">

        <h3 class="text-center mb-4">Edit Question</h3>
        <form action="/EditQuestion" method="post">
            <div class="mb-3">
                <label for="question" class="form-label">Question</label>
                <textarea class="form-control" id="question" name="Question" rows="3" placeholder="Enter the question here..." required></textarea>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="optionA" class="form-label">Option A</label>
                    <input type="text" class="form-control" id="optionA" name="Option_A" placeholder="Option A" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="optionB" class="form-label">Option B</label>
                    <input type="text" class="form-control" id="optionB" name="Option_B" placeholder="Option B" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="optionC" class="form-label">Option C</label>
                    <input type="text" class="form-control" id="optionC" name="Option_C" placeholder="Option C" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="optionD" class="form-label">Option D</label>
                    <input type="text" class="form-control" id="optionD" name="Option_D" placeholder="Option D" required>
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
                <button type="submit" class="btn btn-primary">Update Question</button>
            </div>
        </form>

        <!-- Dynamic message -->
        <div class="message-box">
            ${msg}
        </div>
    </div>
</div>
</body>
</html>
