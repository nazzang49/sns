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
	<link href="${pageContext.request.contextPath}/assets/css/single.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<script src="${pageContext.servletContext.contextPath }/assets/js/jquery-2.2.3.min.js"></script>
</head>

<body>
<script type="text/javascript">
	$(function(){
		
		$('#validationDefault01').change(function(){
			$('#check-email').show();
			$('#pass-email').hide();
		});
		
		$('#check-email').on('click',function(){
			
			var email = $('#validationDefault01').val();
			
			$.ajax({
				url:"${pageContext.request.contextPath}/user/api/check-email?email="+email,
				type:"get",
				dataType:"json",
				success:function(response){
					if(response.result!="success"){
						alert("[통신] 실패");
						return;
					}
					if(response.data==false){
						alert("[중복] 다른 이메일 주소 입력");
						$('#validationDefault01').val("");
						$('#validationDefault01').focus();
						return;
					}
					alert("[가입] 가능");
					$('#check-email').hide();
					$('#pass-email').show();
				}
			});
		});
	});
</script>


	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!--/banner-->
	<div class="banner-inner">
	</div>
	<!--/main-->
	<section class="main-content-w3layouts-agileits">
		<div class="container">
			<h3 class="tittle">회원가입</h3>
				<div class="inner-sec" style="width:500px; margin: 30px auto;">
			<div class="login p-5 bg-light mx-auto mw-100">
				<form action="${pageContext.request.contextPath}/user/join" method="post">
							<div class="form-row">
								<div class="col-md-6 mb-3">
										<label for="validationCustom01">이메일</label>
									<input type="text" class="form-control" id="validationDefault01" placeholder="이메일 형식 준수" style="width:250px;" name="email">
								</div>
								<button type="button" class="btn btn-primary submit mb-4" id="check-email" style="height: 40px; margin-top:30px; margin-left:60px;">이메일 중복 체크</button>
							</div>
							<div class="form-row">
								<div class="col-md-6 mb-3">
										<label for="validationCustom01">이름</label>
									<input type="text" class="form-control" id="validationDefault01" placeholder="닉네임 기입" style="width:400px;" name="name">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
										<label for="exampleInputPassword1 mb-2">비밀번호</label>
									<input type="password" class="form-control" id="password1" placeholder="최소 6자 이상"  style="width:400px;" name="pw">
								</div>
							</div>
							<div class="form-row">
							<div class="col-md-6 mb-3">
										<label for="validationCustom02">연령</label>
									<input type="text" class="form-control" id="validationDefault02" placeholder="숫자"  style="width:400px;" name="age">
								</div>
							</div>
							<div class="form-row">
							<div class="col-md-6 mb-3">
										<label for="validationCustom02">성별</label>
										<div>
									<input type="radio" value="남성" name="gender">남성
									<input type="radio" value="여성" name="gender" style="margin-left:30px;">여성
									</div>
								</div>
							</div>
							<div style="text-align: center;">
							<button type="submit" class="btn btn-primary submit mb-4">회원가입</button>
							</div>
						</form>
		
					</div>
			</div>
		</div>
	</section>
	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!---->	
	<!-- js -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
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