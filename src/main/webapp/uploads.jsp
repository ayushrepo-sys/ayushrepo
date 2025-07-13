<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) session.getAttribute("name");
    String email = (String) session.getAttribute("email");
%>
<img src="/uploads/<%= email %>_filename.jpg" alt="User Photo" width="150"/> -->
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
  <meta charset="UTF-8">
  <title>Bootstrap Theme Toggle</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container py-5">
    <h1 class="mb-4">Welcome to Home Page</h1>

    <div class="btn-group mb-4" role="group">
      <button class="btn btn-light" onclick="setTheme('light')">Light Mode</button>
      <button class="btn btn-dark" onclick="setTheme('dark')">Dark Mode</button>
      <button class="btn btn-secondary" onclick="setTheme('auto')">Auto Mode</button>
    </div>

    <p>This is a sample page where you can toggle between light, dark, and auto themes using Bootstrap 5.3.</p>
  </div>

  <!-- Bootstrap JS + Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

  <script>
    function setTheme(theme) {
      document.documentElement.setAttribute('data-bs-theme', theme);
      localStorage.setItem('theme', theme);
    }

    // Load stored theme on page load
    (function () {
      const savedTheme = localStorage.getItem('theme') || 'auto';
      document.documentElement.setAttribute('data-bs-theme', savedTheme);
    })();
  </script>
</body>
</html>
