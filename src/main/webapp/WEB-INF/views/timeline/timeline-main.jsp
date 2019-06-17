<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Weblog a Blogging Category Bootstrap responsive WebTemplate | Blog3 :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Weblog a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/single.css">
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
</head>

<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!--/banner-->
	
	<!-- logo 이미지 들어갈 위치 at css -->
	<div class="banner-inner">
	</div>
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.html">Home</a>
		</li>
		<li class="breadcrumb-item active">Blog3</li>
	</ol>
	<!--//banner-->

	<!--/main-->
	<section class="main-content-w3layouts-agileits">
		<div class="container">
			<h3 class="tittle">${tvo.title }</h3>
			<div class="inner-sec">
				<!--left-->
				<div class="left-blog-info-w3layouts-agileits text-left">
					<div class="row">
						<div class="col-lg-4 card">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/7.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Feb 20 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/6.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Feb 22 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title ">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/2.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Feb 23 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title ">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card my-lg-4 my-md-1 my-0">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/5.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Mar 20 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card my-4">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/4.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Mar 25 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title ">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card my-lg-4 my-md-1 my-0">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/3.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Feb 30 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title ">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/1.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Mar 31 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title ">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card">
							<a href="single.html">
								<img src="${pageContext.request.contextPath}/assets/images/6.jpg" class="card-img-top img-fluid" alt="">
							</a>
							<div class="card-body">
								<ul class="blog-icons my-4">
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> Apr 01 .2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-comment"></i> 21</a>
									</li>
									<li>
										<a href="#">
											<i class="fas fa-eye"></i> 2000</a>
									</li>

								</ul>
								<h5 class="card-title ">
									<a href="single.html">Blog Post Title</a>
								</h5>
								<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
								<a href="single.html" class="btn btn-primary read-m">Read More</a>
							</div>
						</div>
						<div class="col-lg-4 card">
								<a href="single.html">
									<img src="${pageContext.request.contextPath}/assets/images/8.jpg" class="card-img-top img-fluid" alt="">
								</a>
								<div class="card-body">
									<ul class="blog-icons my-4">
										<li>
											<a href="#">
												<i class="far fa-calendar-alt"></i> Apr 01 .2018</a>
										</li>
										<li class="mx-2">
											<a href="#">
												<i class="far fa-comment"></i> 21</a>
										</li>
										<li>
											<a href="#">
												<i class="fas fa-eye"></i> 2000</a>
										</li>
	
									</ul>
									<h5 class="card-title ">
										<a href="single.html">Blog Post Title</a>
									</h5>
									<p class="card-text mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt.. </p>
									<a href="single.html" class="btn btn-primary read-m">Read More</a>
								</div>
							</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-left mt-4">
								<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1">Previous</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">1</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">2</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">3</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
					</div>
					<!--//left-->
				</div>
			</div>
		</div>
	</section>
	<!--//main-->
	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- js -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!--/ start-smoth-scrolling -->
	<script src="${pageContext.request.contextPath}/assets/js/move-top.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!--// end-smoth-scrolling -->

	<script>
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- //Custom-JavaScript-File-Links -->
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>


</body>

</html>