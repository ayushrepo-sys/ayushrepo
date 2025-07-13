<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) session.getAttribute("name");
    String email = (String) session.getAttribute("email");
%>

<form action="/photo" method="post" enctype="multipart/form-data">
    <div class="mb-3">
        <label for="name" class="form-label">Name:</label>
        <input class="form-control" type="text" name="name" value="<%= name %>" required>
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email:</label>
        <input class="form-control" type="email" name="email" value="<%= email %>" required>
    </div>
    <div class="mb-3">
        <label for="photo" class="form-label">Choose Photo:</label>
        <input class="form-control" type="file" name="photo" accept="image/*" required>
    </div>
    <button class="btn btn-primary" type="submit">Upload Photo</button>
</form>
