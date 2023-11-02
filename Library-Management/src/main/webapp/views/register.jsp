<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Register - E-Library</title>
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div class="banner text-black" id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<div>
										<c:choose>
									        <c:when test="${condition}">
									            <h3 class="text-center">${message1}</h3>
									        </c:when>
									        <c:otherwise>
									            <h3 class="text-center">${message2}</h3>
									        </c:otherwise>
									    </c:choose> 
									</div>
									<h3 class="text-center font-weight-light my-4">Sign Up
										Here</h3>
								</div>
								<img src="assets/img/register.png"
									style="display: block; margin: 0 auto; width: 100px;"
									alt="Register Image">
								<div class="card-body">
									<form id="form" action="/doregister" method="post">
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input class="form-control" id="inputFirstName" type="text"
														placeholder="Enter your first name" name="firstName" value="${user.firstName }"/> <label
														for="inputFirstName">First name</label>
														
													<c:if test="${not empty firstNameErrors}">
														<span class="text-danger">${firstNameErrors}</span>
													</c:if>
													
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-floating">
													<input class="form-control" id="inputLastName" type="text"
														placeholder="Enter your last name" name="lastName" value="${user.lastName }" /> <label
														for="inputLastName">Last name</label>
														
													<c:if test="${not empty lastNameErrors}">
														<span class="text-danger">${lastNameErrors}</span>
													</c:if>
														
												</div>
											</div>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputEmail" type="email"
												placeholder="name@example.com" name="email" value="${user.email }"/> <label
												for="inputEmail">Email address</label>
												
												<c:if test="${not empty emailErrors}">
														<span class="text-danger">${emailErrors}</span>
												</c:if>
												
										</div>
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input class="form-control" id="inputPassword"
														type="password" placeholder="Create a password"
														name="password" /> <label for="inputPassword">Password</label>
														
													<c:if test="${not empty passwordErrors}">
														<span class="text-danger">${passwordErrors}</span>
													</c:if>
														
												</div>
											</div>
											<!-- <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" 
                                                        type="password" 
                                                        placeholder="Confirm password" />
                                                        <label for="inputPasswordConfirm">Confirm Password</label>
                                                    </div>
                                                </div> -->
										</div>
										<div class="mt-4 mb-0">
											<!--  <div class="text-center"><a class="btn btn-primary" type="submit">Sign Up</a></div> -->
											<div class="text-center">
												<button class="btn btn-primary" type="submit">Sign
													Up</button>
											</div>

										</div>
									</form>
								</div>
								<div class="card-footer text-center py-3">
									<div class="small">
										<a href="/login">Have an account? Go to login</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2022</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<!-- <script>
    const form = document.getElementById('form'); // Add an ID 'form' to your form element
    const inputFirstName = document.getElementById('inputFirstName');

    form.addEventListener('submit', e => {
        e.preventDefault();
        validateInputs();
    });

    const setError = (element, message) => {
        const inputControl = element.parentElement;
        const invalidFeedback = inputControl.querySelector('.invalid-feedback'); // Corrected this line

        invalidFeedback.innerText = message; // Corrected this line
        inputControl.classList.add('is-invalid');
        inputControl.classList.remove('success'); // Removed unnecessary line
    }

    const setSuccess = element => {
        const inputControl = element.parentElement;
        const invalidFeedback = inputControl.querySelector('.invalid-feedback'); // Corrected this line

        invalidFeedback.innerText = ''; // Corrected this line
        inputControl.classList.remove('is-invalid'); // Corrected class name
        inputControl.classList.add('success');
    };

    const validateInputs = () => {
        const inputFirstNameValue = inputFirstName.value.trim();

        if (inputFirstNameValue === '') {
            setError(inputFirstName, 'First Name is Required');
        } else {
            setSuccess(inputFirstName);
        }
    }
</script> -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
