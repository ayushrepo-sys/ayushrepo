<jsp:include page="menu.jsp"></jsp:include>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Image Gallery</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f8f9fa;
        }

        .gallery-title {
            text-align: center;
            margin: 30px 0;
            font-size: 2.5rem;
            font-weight: bold;
            color: #343a40;
        }

        .gallery-img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .gallery-item {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="gallery-title">My Gallery</div>

        <div class="row">
            <div class="col-md-4 gallery-item">
                <img src="images/flower.jpg" alt="Image 1" class="gallery-img">
            </div>
            <div class="col-md-4 gallery-item">
                <img src="images/nature.jpg" alt="Image 2" class="gallery-img">
            </div>
            <div class="col-md-4 gallery-item">
                <img src="images/flower.jpg" alt="Image 3" class="gallery-img">
            </div>
            <div class="col-md-4 gallery-item">
                <img src="images/nature.jpg" alt="Image 4" class="gallery-img">
            </div>
            <div class="col-md-4 gallery-item">
                <img src="images/flower.jpg" alt="Image 5" class="gallery-img">
            </div>
            <div class="col-md-4 gallery-item">
                <img src="images/nature.jpg" alt="Image 6" class="gallery-img">
            </div>
        </div>
    </div>

    <!-- Bootstrap JS CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
