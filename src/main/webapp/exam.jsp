<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Programming Quiz</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .quiz-container {
            background-color: #ffffff;
            border-radius: 1rem;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 2rem;
        }
        .quiz-header img {
            width: 100%;
            height: auto;
            border-radius: 1rem 1rem 0 0;
        }
        h2 {
            margin-top: 1rem;
            font-weight: 600;
        }
        h5 {
            font-weight: 500;
        }
        .btn-success {
            font-weight: 500;
            border-radius: 2rem;
            padding: 10px 20px;
        }
        .form-check-label {
            font-size: 1rem;
        }
        .message-box {
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
            color: green;
        }
    </style>
</head>
<body>

<div class="container mt-5 mb-5">
    <div class="quiz-container">
        <div class="quiz-header mb-4">
            <img src="https://www.euroschoolindia.com/blogs/wp-content/uploads/2023/06/study-tips-for-final-exams.jpg" alt="Quiz Banner">
            <h2 class="text-center mt-3">Programming MCQ Quiz</h2>
        </div>

        <form action="/submitQuiz" method="post">
            <!-- Question 1 -->
            <div class="mb-4">
                <h5>1. Which keyword is used to inherit a class in Java?</h5>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" value="a" required>
                    <label class="form-check-label">implement</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" value="b">
                    <label class="form-check-label">extends</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" value="c">
                    <label class="form-check-label">inherits</label>
                </div>
            </div>

            <!-- Question 2 -->
            <div class="mb-4">
                <h5>2. Which symbol is used to define a function in Python?</h5>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q2" value="a" required>
                    <label class="form-check-label">function</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q2" value="b">
                    <label class="form-check-label">fun</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q2" value="c">
                    <label class="form-check-label">def</label>
                </div>
            </div>

            <!-- Question 3 -->
            <div class="mb-4">
                <h5>3. Which command is used to retrieve data in SQL?</h5>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q3" value="a" required>
                    <label class="form-check-label">GET</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q3" value="b">
                    <label class="form-check-label">SELECT</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q3" value="c">
                    <label class="form-check-label">FETCH</label>
                </div>
            </div>

            <!-- Question 4 -->
            <div class="mb-4">
                <h5>4. What is the size of int in C (in bytes)?</h5>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q4" value="a" required>
                    <label class="form-check-label">2</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q4" value="b">
                    <label class="form-check-label">4</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q4" value="c">
                    <label class="form-check-label">8</label>
                </div>
            </div>

            <!-- Question 5 -->
            <div class="mb-4">
                <h5>5. Which HTML tag is used to create a hyperlink?</h5>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q5" value="a" required>
                    <label class="form-check-label">&lt;link&gt;</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q5" value="b">
                    <label class="form-check-label">&lt;a&gt;</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q5" value="c">
                    <label class="form-check-label">&lt;href&gt;</label>
                </div>
            </div>

            <div class="text-center mt-4">
                <button type="submit" class="btn btn-success">Submit Quiz</button>
            </div>
        </form>

        <div class="message-box">
            ${msg}
        </div>
    </div>
</div>

</body>
</html>
