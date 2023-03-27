<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="inc/base.jsp"></jsp:include>
<body><br>
    <div class="container">
        <div class="row mt-7">
          <div class="col-md-6 offset-md-3">
            <div class="card">
              <div class="card-header text-center">
                <h2>View Profile</h2>
              </div>
              <div class="card-body">
                <!-- <img src="https://via.placeholder.com/150" alt="Profile Picture" class="img-fluid rounded-circle mb-3" /> -->
                <h4 class="card-title">Name</h4>
                <p class="card-text">some message..........................</p>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item"><strong>Email:</strong> john.doe@example.com</li>
                  <li class="list-group-item"><strong>Phone:</strong> +1 (123) 456-7890</li>
                  <li class="list-group-item"><strong>Address:</strong> 123 Main St, Anytown USA</li>
                  <li class="list-group-item"><strong>Ciy:</strong> kolkata</li>
                  <li class="list-group-item"><strong>Pin Code:</strong> 700 042</li><br>
                  <li class="list-group-item"><div class="d-grid gap-2 col-6 mx-auto">
                    <a class="btn btn-info" href="updateprofile.jsp" type="button" name="" >UPDATE PROFILE</a>
                </div></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>

<jsp:include page="inc/footer.jsp"></jsp:include>