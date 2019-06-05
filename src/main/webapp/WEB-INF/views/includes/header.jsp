<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<header>
		<div class="top-bar_sub_w3layouts container-fluid">
			<div class="row">
				<div class="col-md-4 logo text-left">
					<!-- 메인으로 이동 -->
					<a class="navbar-brand" href="${pageContext.request.contextPath}">
						<i class="fab fa-linode"></i> NEW WAVE</a>
				</div>
				<div class="col-md-4 top-forms text-center mt-lg-3 mt-md-1 mt-0">
					<span class="mx-lg-4 mx-md-2  mx-1">
						<a href="${pageContext.request.contextPath}/user/login">
							<i class="fas fa-lock"></i> 로그인</a>
					</span>
					<span>
						<a href="${pageContext.request.contextPath}/user/join">
							<i class="far fa-user"></i> 회원가입</a>
					</span>
				</div>
				<div class="col-md-4 log-icons text-right">
					<ul class="social_list1 mt-3">
						<li>
							<a href="#" class="facebook1 mx-2">
								<i class="fab fa-facebook-f"></i>
							</a>
						</li>
						<li>
							<a href="#" class="twitter2">
								<i class="fab fa-twitter"></i>
							</a>
						</li>
						<li>
							<a href="#" class="dribble3 mx-2">
								<i class="fab fa-dribbble"></i>
							</a>
						</li>
						<li>
							<a href="#" class="pin">
								<i class="fab fa-pinterest-p"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="header_top" id="home">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<button class="navbar-toggler navbar-toggler-right mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}">메인
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">소개</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							    aria-expanded="false">
								마이 페이지
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#"></a>
								<a class="dropdown-item" href="blog1.html">Standard Blog</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="blog2.html">2 Column Blog</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="blog3.html">3 Column Blog</a>
							</div>
						</li>
					</ul>
					<form action="#" method="post" class="form-inline my-2 my-lg-0 header-search">
						<!-- 사용자 검색 by 이메일 주소 -->
						<input class="form-control mr-sm-2" type="search" placeholder="검색" name="search">
						<button class="btn btn1 my-2 my-sm-0" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</div>
			</nav>
		</div>
	</header>