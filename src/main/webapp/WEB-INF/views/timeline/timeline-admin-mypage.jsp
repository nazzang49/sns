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
	<title>Weblog a Blogging Category Bootstrap responsive WebTemplate | Single :: w3layouts</title>
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
	<!--Header-->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="banner-inner">
	</div>
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.html">Home</a>
		</li>
		<li class="breadcrumb-item active">Single</li>
	</ol>

	<!--//banner-->
	<section class="banner-bottom">
		<!--/blog-->
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
											<i class="far fa-calendar-alt"></i> 인기 게시물</a>
									</li>
									<li class="mx-2">
										<a href="#">
											<i class="far fa-thumbs-up"></i> 201 좋아요</a>
									</li>
									<li>
										<a href="#">
											<i class="far fa-comment"></i> 15 댓글</a>
									</li>
									
								</ul>
							</div>
						</div>

						<h3>
							<a href="single.html">제목 </a>
						</h3>
						<p>내용</p>
						<a href="single.html" class="btn btn-primary read-m">Read More</a>
					</div>

					<div class="comment-top">
						<h4>Comments</h4>
						<div class="media">
							<img src="${pageContext.request.contextPath}/assets/images/t1.jpg" alt="" class="img-fluid" />
							<div class="media-body">
								<h5 class="mt-0">Joseph Goh</h5>
								<p>Lorem Ipsum convallis diam consequat magna vulputate malesuada. id dignissim sapien velit id felis ac cursus eros.
									Cras a ornare elit.</p>

								<div class="media mt-3">
									<a class="d-flex pr-3" href="#">
										<img src="${pageContext.request.contextPath}/assets/images/t2.jpg" alt="" class="img-fluid" />
									</a>
									<div class="media-body">
										<h5 class="mt-0">Richard Spark</h5>
										<p>Lorem Ipsum convallis diam consequat magna vulputate malesuada. id dignissim sapien velit id felis ac cursus eros.
											Cras a ornare elit.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="comment-top">
						<h4>Leave a Comment</h4>
						<div class="comment-bottom">
							<form action="#" method="post">
								<input class="form-control" type="text" name="Name" placeholder="Name" required="">
								<input class="form-control" type="email" name="Email" placeholder="Email" required="">

								<input class="form-control" type="text" name="Subject" placeholder="Subject" required="">

								<textarea class="form-control" name="Message" placeholder="Message..." required=""></textarea>
								<button type="submit" class="btn btn-primary submit">Submit</button>
							</form>
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
							<h4>앨범 리스트</h4>
							<!-- 카테고리 리스트 -->
							<ul class="list-group single">
									<c:forEach items='${albumList }' var='avo'>
									<li class="list-group-item d-flex justify-content-between align-items-center">
									  ${avo.title }
									  <span class="badge badge-primary badge-pill">${avo.postCount }</span>
									</li>
									</c:forEach>
						    </ul>
						</div>
						<div class="tech-btm">
							<h4>Top stories of the week</h4>

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
						<div class="single-gd tech-btm">
							<h4>Recent Post</h4>
							<div class="blog-grids">
								<div class="blog-grid-left">
									<a href="single.html">
										<img src="${pageContext.request.contextPath}/assets/images/b1.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="blog-grid-right">

									<h5>
										<a href="single.html">Pellentesque dui, non felis. Maecenas male</a>
									</h5>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>

				</aside>
				<!--//right-->
			</div>
		</div>
	</section>
	<!--//main-->

	<!--footer-->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!---->
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