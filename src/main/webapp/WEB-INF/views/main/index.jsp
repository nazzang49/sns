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
<html>
<head>
	<title>sns</title>
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.desoslide.css">
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
</head>

<script type="text/javascript">
	if('${joinflag}'=='true'){
		alert("[가입 환영] 메인으로 이동");
	}else{
		alert("[가입 실패] 메인으로 이동");
	}
</script>

<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!--/banner-->
	<div class="banner">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<div class="carousel-caption">
						<h3>Create the lifestyle
							<span>you desire</span>
						</h3>
						<div class="read">
							<a href="single.html" class="btn btn-primary read-m">Read More</a>
						</div>
					</div>
				</div>
				<div class="carousel-item item2">
					<div class="carousel-caption">
						<h3>Engaging Purposeful
							<span>and Creative</span>
						</h3>
						<div class="read">
							<a href="single.html" class="btn btn-primary read-m">Read More</a>
						</div>
					</div>
				</div>
				<div class="carousel-item item3">
					<div class="carousel-caption">
						<h3>Create the lifestyle
							<span>you desire</span>
						</h3>
						<div class="read">
							<a href="single.html" class="btn btn-primary read-m">Read More</a>
						</div>
					</div>
				</div>
				<div class="carousel-item item4">
					<div class="carousel-caption">
						<h3>Engaging Purposeful
							<span>and Creative</span>
						</h3>
						<div class="read">
							<a href="single.html" class="btn btn-primary read-m">Read More</a>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!--/model-->
	<!--//banner-->
	<section class="bottom-slider">
		<div class="course_demo1">
			<ul id="flexiselDemo1">
				<li>
					<div class="blog-item">
						<img src="${pageContext.request.contextPath}/assets/images/1.jpg" alt=" " class="img-fluid" />
						<button type="button" class="btn btn-primary play" data-toggle="modal" data-target="#exampleModal">
							<i class="fas fa-play"></i>
						</button>

						<div class="floods-text">
							<h3>The fed and inequality
								<span>Blogger
									<label>|</label>
									<i>Adom Smith</i>
								</span>
							</h3>

						</div>
					</div>
				</li>
				<li>
					<div class="blog-item">
						<img src="${pageContext.request.contextPath}/assets/images/2.jpg" alt=" " class="img-fluid" />
						<button type="button" class="btn btn-primary play" data-toggle="modal" data-target="#exampleModal">
							<i class="fas fa-play"></i>
						</button>

						<div class="floods-text">
							<h3>The fastest insect in the world
								<span>Blogger
									<label>|</label>
									<i>Adom Smith</i>
								</span>
							</h3>

						</div>
					</div>
				</li>
				<li>
					<div class="blog-item">
						<img src="${pageContext.request.contextPath}/assets/images/3.jpg" alt=" " class="img-fluid" />
						<button type="button" class="btn btn-primary play" data-toggle="modal" data-target="#exampleModal">
							<i class="fas fa-play"></i>
						</button>


						<div class="floods-text">
							<h3>Billionaires versus Millionaires
								<span>Blogger
									<label>|</label>
									<i>Adom Smith</i>
								</span>
							</h3>

						</div>
					</div>
				</li>
				<li>
					<div class="blog-item">
						<img src="${pageContext.request.contextPath}/assets/images/4.jpg" alt=" " class="img-fluid" />
						<button type="button" class="btn btn-primary play" data-toggle="modal" data-target="#exampleModal">
							<i class="fas fa-play"></i>
						</button>


						<div class="floods-text">
							<h3>Billionaires versus Millionaires
								<span>Blogger
									<label>|</label>
									<i>Adom Smith</i>
								</span>
							</h3>

						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="embed-responsive embed-responsive-21by9">
							<iframe src="https://player.vimeo.com/video/145787219"></iframe>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--/main-->
	<section class="main-content-w3layouts-agileits">
		<div class="container">
			<div class="row">
				<!--left-->
				<div class="col-lg-8 left-blog-info-w3layouts-agileits text-left">
					<div class="blog-grid-top">
						<div class="b-grid-top">
							<div class="blog_info_left_grid">
								<a href="single.html">
									<img src="${pageContext.request.contextPath}/assets/images/b1.jpg" class="img-fluid" alt="">
								</a>
							</div>
							<div class="blog-info-middle">
								<ul>
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i> FEB 15,2018</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-thumbs-up"></i> 201 Likes</a>
									</li>
									<li>
										<a href="#">
											<i class="far fa-comment"></i> 15 Comments</a>
									</li>
									
								</ul>
							</div>
						</div>

						<h3>
							<a href="single.html">Amet consectetur adipisicing </a>
						</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna
							aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis
							aute irudre dolor in elit sed uta labore dolore reprehender</p>
						<a href="single.html" class="btn btn-primary read-m">Read More</a>
					</div>
					<!--//silder-->
					<div class="blog-mid-sec">
						<ul id="flexiselDemo2">
							<li>
								<div class="blog-item">
									<img src="${pageContext.request.contextPath}/assets/images/5.jpg" alt=" " class="img-fluid" />
									<button type="button" class="btn btn-primary play sec" data-toggle="modal" data-target="#exampleModal">
										<i class="fas fa-play"></i>
									</button>
									<div class="floods-text">
										<h3>Lorem ipsum </h3>
									</div>
								</div>
							</li>
							<li>
								<div class="blog-item">
									<img src="${pageContext.request.contextPath}/assets/images/6.jpg" alt=" " class="img-fluid" />
									<button type="button" class="btn btn-primary play sec" data-toggle="modal" data-target="#exampleModal">
										<i class="fas fa-play"></i>
									</button>
									<div class="floods-text">
										<h3>Lorem ipsum </h3>
									</div>
								</div>
							</li>
							<li>
								<div class="blog-item">
									<img src="${pageContext.request.contextPath}/assets/images/7.jpg" alt=" " class="img-fluid" />
									<button type="button" class="btn btn-primary play sec" data-toggle="modal" data-target="#exampleModal">
										<i class="fas fa-play"></i>
									</button>
									<div class="floods-text">
										<h3>Lorem ipsum </h3>
									</div>
								</div>
							</li>
							<li>
								<div class="blog-item">
									<img src="${pageContext.request.contextPath}/assets/images/8.jpg" alt=" " class="img-fluid" />
									<button type="button" class="btn btn-primary play sec" data-toggle="modal" data-target="#exampleModal">
										<i class="fas fa-play"></i>
									</button>
									<div class="floods-text">
										<h3>Lorem ipsum </h3>
									</div>
								</div>
							</li>
						</ul>
					</div>

					<!--//silder-->
					<div class="blog-girds-sec">
						<div class="row">
							<div class="col-md-6 blog-grid-top">
								<div class="b-grid-top">
									<div class="blog_info_left_grid">
										<a href="single.html">
											<img src="${pageContext.request.contextPath}/assets/images/b2.jpg" class="img-fluid" alt="">
										</a>
									</div>
									<h3>
										<a href="single.html">Amet consectetur </a>
									</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt aliqua uta enim.</p>
								</div>
								<ul class="blog-icons">
									<li>
										<a href="#">
											<i class="far fa-clock"></i> 5 Monts</a>
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
							</div>
							<div class="col-md-6 blog-grid-top">
								<div class="b-grid-top">
									<div class="blog_info_left_grid">
										<a href="single.html">
											<img src="${pageContext.request.contextPath}/assets/images/b3.jpg" class="img-fluid" alt="">
										</a>
									</div>
									<h3>
										<a href="single.html">Amet adipisicing </a>
									</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt aliqua uta enim.</p>

								</div>
								<ul class="blog-icons">
									<li>
										<a href="#">
											<i class="far fa-clock"></i> 5 Monts</a>
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
							</div>
						</div>
					</div>
				</div>
				<!--//left-->
				<!--right-->
				<aside class="col-lg-4 agileits-w3ls-right-blog-con text-right">
					<div class="right-blog-info text-left">
						<div class="tech-btm">
							<img src="${pageContext.request.contextPath}/assets/images/banner1.jpg" class="img-fluid" alt="">
						</div>
						<div class="tech-btm">
							<h4>Sign up to our newsletter</h4>
							<p>Pellentesque dui, non felis. Maecenas male </p>
							<form action="#" method="post">
								<input type="email" placeholder="Email" required="">
								<input type="submit" value="Subscribe">
							</form>

						</div>
						<div class="tech-btm widget_social">
							<h4>Stay Connect</h4>
							<ul>

								<li>
									<a class="twitter" href="#">
										<i class="fab fa-twitter"></i>
										<span class="count">317K</span> Twitter Followers</a>
								</li>
								<li>
									<a class="facebook" href="#">
										<i class="fab fa-facebook-f"></i>
										<span class="count">218k</span> Twitter Followers</a>
								</li>
								<li>
									<a class="dribble" href="#">
										<i class="fab fa-dribbble"></i>

										<span class="count">215k</span> Dribble Followers</a>
								</li>
								<li>
									<a class="pin" href="#">
										<i class="fab fa-pinterest"></i>
										<span class="count">190k</span> Pinterest Followers</a>
								</li>

							</ul>
						</div>
						<div class="tech-btm">
							<h4>Recent Posts</h4>
							
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/1.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/5.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/3.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">
									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/2.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/4.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/6.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">
									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
								
							</div>
						</div>
					</div>

				</aside>
				<!--//right-->
			</div>
		</div>
	</section>
	<!--//main-->
	<!--/middle-->
	<section class="middle-sec-agileinfo-w3ls">
		<div class="container">
			<div class="row inner-sec">
				<div class="col-md-4 news-left">
					<ul id="demo1_thumbs" class="list-inline">
						<li>
							<a href="${pageContext.request.contextPath}/assets/images/m1.jpg">
								<img src="${pageContext.request.contextPath}/assets/images/m1.jpg" alt="" data-desoslide-caption="<h3>Latest Post 1</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua</h4>
									<p>Integer </p>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/assets/images/m2.jpg">
								<img src="${pageContext.request.contextPath}/assets/images/m2.jpg" alt="" data-desoslide-caption="<h3>Latest Post 2</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua</h4>
									<p>Integer </p>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/assets/images/m3.jpg">
								<img src="${pageContext.request.contextPath}/assets/images/m3.jpg" alt="" data-desoslide-caption="<h3>Latest Post 3</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua</h4>
									<p>Integer </p>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/assets/images/m4.jpg">
								<img src="${pageContext.request.contextPath}/assets/images/m4.jpg" alt="" data-desoslide-caption="<h3>Latest Post 4</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua</h4>
									<p>Integer </p>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<div id="demo1_main_image" class="col-md-8  news-right"></div>
				<div class="clearfix"> </div>
			</div>
		</div>

	</section>
	<!--//middle-->
	<!---->
	<section class="main-content-w3layouts-agileits">
			<div class="container">
				<div class="row">
					<!--left-->
					<div class="col-lg-8 left-blog-info-w3layouts-agileits text-left">
						<div class="blog-grid-top">
							<div class="b-grid-top">
								<div class="blog_info_left_grid">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/b4.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="blog-info-middle">
									<ul>
										<li>
											<a href="#">
												<i class="far fa-calendar-alt"></i> FEB 15,2018</a>
										</li>
										<li class="mx-2">
											<a href="#">
												<i class="far fa-thumbs-up"></i> 201 Likes</a>
										</li>
										<li>
											<a href="#">
												<i class="far fa-comment"></i> 15 Comments</a>
										</li>
									
									</ul>
								</div>
							</div>
	
							<h3>
								<a href="single.html">Amet consectetur adipisicing </a>
							</h3>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna
								aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis
								aute irudre dolor in elit sed uta labore dolore reprehender</p>
							<a href="single.html" class="btn btn-primary read-m">Read More</a>
						</div>
						<!--//silder-->
						
	
					</div>
					<!--//left-->
					<!--right-->
					<aside class="col-lg-4 agileits-w3ls-right-blog-con text-left">
						<div class="tech-btm">
							<h4>Recent Posts</h4>
							
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/5.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/6.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/7.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">
									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/8.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/4.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Jan, 2018</span>
									</div>
								</div>
								
							</div>
							<div class="blog-grids row mb-3">
								<div class="col-md-5 blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/6.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="col-md-7 blog-grid-right">
									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male non felis </a>
									</h5>
									<div class="sub-meta">
										<span>
											<i class="far fa-clock"></i> 20 Feb, 2018</span>
									</div>
								</div>
								
							</div>
						
						</div>
	
					</aside>
					<!--//right-->
				</div>
			</div>
		</section>
		<!--//main-->
	
	<!---->
	<!-- js -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!-- desoslide-JavaScript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.desoslide.js"></script>
	<script>
		$('#demo1_thumbs').desoSlide({
			main: {
				container: '#demo1_main_image',
				cssClass: 'img-responsive'
			},
			effect: 'sideFade',
			caption: true
		});
	</script>

	<!-- requried-jsfiles-for owl -->
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 3
					}
				}
			});

		});
	</script>
	<script>
		$(window).load(function () {
			$("#flexiselDemo2").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 3
					}
				}
			});

		});
	</script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.flexisel.js"></script>
	<!-- //password-script -->
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
	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>	
	<script>
		$(document).ready(function () {
			
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									

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