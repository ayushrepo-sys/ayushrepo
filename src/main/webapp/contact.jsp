<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="menu.jsp"></jsp:include>

<!-- Contact Section -->
<div class="container px-5 my-5">
  <div class="row justify-content-center">
    <div class="col-lg-10">
      <div class="card border-0 rounded-3 shadow-lg">
        <div class="row g-0">
        
          <!-- Left Image Section -->
          <div class="col-md-5 d-flex align-items-center justify-content-center p-3 bg-light">
            <img src="https://img.freepik.com/free-psd/contact-us-label-illustration_23-2151600822.jpg?semt=ais_hybrid&w=740" 
                 alt="Contact Us" class="img-fluid rounded-start">
          </div>
          
          <!-- Right Form Section -->
          <div class="col-md-7">
            <div class="card-body p-4">
              <div class="text-center mb-4">
                <h1 class="fw-light">Contact Form</h1>
                <p class="text-muted">A functional Bootstrap 5 contact form with validation built using SB Forms.</p>
              </div>

              <form id="contactForm" data-sb-form-api-token="API_TOKEN">

                <!-- Name Input -->
                <div class="form-floating mb-3">
                  <input class="form-control" id="name" type="text" placeholder="Name" data-sb-validations="required" />
                  <label for="name">Name</label>
                  <div class="invalid-feedback" data-sb-feedback="name:required">Name is required.</div>
                </div>

                <!-- Email Input -->
                <div class="form-floating mb-3">
                  <input class="form-control" id="emailAddress" type="email" placeholder="Email Address" data-sb-validations="required,email" />
                  <label for="emailAddress">Email Address</label>
                  <div class="invalid-feedback" data-sb-feedback="emailAddress:required">Email is required.</div>
                  <div class="invalid-feedback" data-sb-feedback="emailAddress:email">Invalid email format.</div>
                </div>

                <!-- Message Input -->
                <div class="form-floating mb-3">
                  <textarea class="form-control" id="message" placeholder="Message" style="height: 10rem;" data-sb-validations="required"></textarea>
                  <label for="message">Message</label>
                  <div class="invalid-feedback" data-sb-feedback="message:required">Message is required.</div>
                </div>

                <!-- Submit Success -->
                <div class="d-none" id="submitSuccessMessage">
                  <div class="text-center mb-3">
                    <div class="fw-bolder">Form submission successful!</div>
                    <p>To activate this form, sign up at</p>
                    <a href="https://startbootstrap.com/solution/contact-forms">Start Bootstrap Contact Forms</a>
                  </div>
                </div>

                <!-- Submit Error -->
                <div class="d-none" id="submitErrorMessage">
                  <div class="text-center text-danger mb-3">Error sending message!</div>
                </div>

                <!-- Submit Button -->
                <div class="d-grid">
                  <button class="btn btn-primary btn-lg disabled" id="submitButton" type="submit">Submit</button>
                </div>
              </form>
              <!-- End of form -->
            </div>
          </div>

        </div> <!-- End Row -->
      </div>
    </div>
  </div>
</div>

<!-- SB Forms Script -->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
