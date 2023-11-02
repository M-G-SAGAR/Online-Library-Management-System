<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Edit Book</title>
</head>
<!-- Here i am facing css issue so when i remove the containt of body class i get the css properly -->
<body class="">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-10">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Edit Book Details</h3>
								</div>
								<div class="card-body">
									<form action="/update_book/${book.id}" method="post">
										<div class="row mb-3">
											<div class="col-md-6">
												<label for="inputFirstName" style="padding: 8px;">Book
													Name</label> <input class="form-control" id="inputFirstName"
													type="text" placeholder="Enter your Book Name" name="name"
													value="${book.name}" />

											</div>
											<div class="col-md-6">
												<label for="inputLastName" style="padding: 8px;">Author</label>
												<input class="form-control" id="inputLastName" type="text"
													placeholder="Enter your Author Name" name="author"
													value="${book.author}" />

											</div>

										</div>

										<div class="row mb-3">

											<div class="col-md-6">
												<label for="inputLastName" style="padding: 8px;">Purchased
													By</label> <input class="form-control" id="inputLastName"
													type="text" placeholder="Enter your Purchased By"
													name="purchasedBy" value="${book.purchasedBy}" />

											</div>
											<div class="col-md-6">
												<label for="inputPassword" style="padding: 8px;">Publication</label>
												<input class="form-control" id="inputPassword" type="text"
													placeholder="Publication" name="publication"
													value="${book.publication}" />

											</div>

										</div>

										<div class="row mb-3">

											<div class="col-md-6">
												<label for="inputPasswordConfirm" style="padding: 8px;">Issue
													Date</label> <input class="form-control" id="inputPasswordConfirm"
													type="text" placeholder="Issue Date" name="date"
													value="${book.date}" />

											</div>
											<div class="col-md-6">
												<label for="inputPasswordConfirm" style="padding: 8px;">Price</label>
												<input class="form-control" id="inputPasswordConfirm"
													type="text" placeholder="Price" name="price"
													value="${book.price}" />

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
												<button type="submit" class="btn btn-outline-primary">Edit</button>
												<a href="home">
													<button
														class="btn btn-outline-primary">Back</button>
												</a>
												<!-- <a class="btn btn-primary ml-2" href="add_book">Reset</a> -->
												<!-- <button type="submit" class="btn btn-primary">Reset</button> -->
											</div>
										</div>

									</form>
								</div>
								<div class="card-footer text-center py-3">
									<div class="small">
										<a class="btn btn-outline-primary ml-2" href="/home">Dashboard</a>
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
	<script src="js/scripts.js"></script>
</body>
</html>