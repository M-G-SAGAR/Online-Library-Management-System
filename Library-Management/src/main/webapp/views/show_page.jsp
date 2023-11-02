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
									<h2 class="text-center font-weight-light my-4">Book Details</h2>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-4" align="center">
											<h1>
												<i class="icon-android-attach"></i>
											</h1>
											<h2>${book.name}</h2>
											<div class="hr-center"></div>
											<h5>BOOK#${book.id}</h5>
											<br> <img id="barcode" class="img-responsive" /> <br />
											<br />

										</div>
										<div class="col-md-4">
										
											<h4>Book Name</h4>
											<div class="hr-left"></div>
											<p>${book.name}</p>

											<h4>Author</h4>
											<div class="hr-left"></div>
											<p>${book.author}</p>

											<h4>Purchased By</h4>
											<div class="hr-left"></div>
											<p>${book.purchasedBy}</p>
										</div>
										<div class="col-md-4">

											<h4>Publication</h4>
											<div class="hr-left"></div>
											<p>${book.publication}</p>

											<h4>Issue Date</h4>
											<div class="hr-left"></div>
											<p>${book.date}</p>

											<h4>Price</h4>
											<div class="hr-left"></div>
											<p>${book.price}</p>
										</div>
									</div>

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