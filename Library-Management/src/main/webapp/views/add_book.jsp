<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link href="../../css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-10">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Fill New Book Details</h3>
								</div>
								<div class="card-body">
									<form action="book_table" method="post">
										<div class="row mb-3">
											<div class="col-md-6">
												<label for="inputFirstName" style="padding: 8px;">Book
													Name</label> <input class="form-control" id="inputFirstName"
													type="text" placeholder="Enter your Book Name" name="name" required="required"/>

											</div>
											<div class="col-md-6">
												<label for="inputLastName" style="padding: 8px;">Author</label>
												<input class="form-control" id="inputLastName" type="text"
													placeholder="Enter your Author Name" name="author" required="required"/>

											</div>

										</div>

										<div class="row mb-3">

											<div class="col-md-6">
												<label for="inputLastName" style="padding: 8px;">Purchased
													By</label> <input class="form-control" id="inputLastName"
													type="text" placeholder="Enter your Purchased By" name="purchasedBy" required="required"/>

											</div>
											<div class="col-md-6">
												<label for="inputPassword" style="padding: 8px;">Publication</label>
												<input class="form-control" id="inputPassword"
													type="text" placeholder="Publication" name="publication" required="required"/>

											</div>

										</div>

										<div class="row mb-3">

											<div class="col-md-6">
												<label for="inputPasswordConfirm" style="padding: 8px;">Issue
													Date</label> <input class="form-control" id="inputPasswordConfirm"
													type="text" placeholder="Issue Date" name="date" required="required"/>

											</div>
											<div class="col-md-6">
												<label for="inputPasswordConfirm" style="padding: 8px;">Price</label>
												<input class="form-control" id="inputPasswordConfirm"
													type="text" placeholder="Price" name="price" required="required"/>

											</div>
										</div>
										<!-- <div class="mt-5 mb-4">
											<div class="justify-content-left">
												<a class="btn btn-primary btn-block">Submit
													</a>
													<a class="btn btn-primary btn-block" href="add_book">Reset
													</a>
											</div>
										</div> -->
										<div class="mt-5 mb-4 d-flex justify-content-end">
											<div>
												<!-- <a class="btn btn-primary">Submit</a> --> 
												<button type="submit" class="btn btn-outline-primary">Add Book</button>
												<!-- <a class="btn btn-outline-primary ml-2" href="add_book">Reset</a> -->
												<button type="reset" class="btn btn-outline-primary">Reset</button>
												<!-- <a href="home">
													<button
														class="btn btn-outline-primary">Back</button>
												</a> -->
												<a class="btn btn-outline-primary ml-2" href="book_table">Back</a>
											</div>
										</div>

									</form>
								</div>
								<div class="card-footer text-center py-3">
									<div class="small">
										<a class="btn btn-outline-primary ml-2" href="home">Dashboard</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<!-- <div id="layoutAuthentication_footer">
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
		</div> -->
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="../../js/scripts.js"></script>
</body>
</html>
