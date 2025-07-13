<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg rounded-4">
                <div class="card-header bg-primary text-white text-center">
                    <h4>Update User</h4>
                </div>
                <div class="card-body">
                    <form method="post" action="updateusers">
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="${user_master[0].name}" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">password</label>
                            <input type="text" class="form-control" name="password" value="${user_master[0].password}" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">mobile</label>
                            <input type="text" class="form-control" name="mobile" value="${user_master[0].mobile}" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Role</label>
                            <input type="text" class="form-control" name="role" value="${user_master[0].role}" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">status</label>
                            <input type="text" class="form-control" name="status" value="${user_master[0].status}" required>
                        </div>
                       
                        

                        <input type="hidden" name="email" value="${user_master[0].email}"/>

                        <div class="d-grid">
                            <input type="submit" class="btn btn-success" value="Update">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
