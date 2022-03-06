<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>CAKEON - Welcome</title>
	<meta charset="UTF-8">
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="<c:url value='/resources/plugins/bootstrap-5.1.3-dist/css/bootstrap.min.css'/>">

	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="<c:url value='/resources/plugins/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js'/>"></script>
	
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="<c:url value='/resources/plugins/bootstrap-5.1.3-dist/theme/navbar-top.css'/>">
		
</head>
<body>

	<!-- 네비게이터 -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Eighth navbar example">
    <div class="container">
	    <a class="navbar-brand" href="<c:url value='/' />">CAKEON</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>

		<div class="collapse navbar-collapse" id="navbarsExample07">
	  		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
		    	<li class="nav-item">
		      		<a class="nav-link active" aria-current="page" href="<c:url value='/' />">홈으로</a>
		    	</li>
		    	<li class="nav-item dropdown">
		      		<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">소개</a>
		      	<ul class="dropdown-menu" aria-labelledby="dropdown01">
			        <li><a class="dropdown-item" href="<c:url value='/introduce' />">소개</a></li>
					<li><a class="dropdown-item" href="<c:url value='/cv' />">CV</a></li>
		  		</ul>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="https://dev.cakeon-project.xyz">개발</a>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="<c:url value='/a' />">임시</a>
				</li>
				<li class="nav-item dropdown">
	  				<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-bs-toggle="dropdown" aria-expanded="false">맴버십</a>
		  			<ul class="dropdown-menu" aria-labelledby="dropdown02">
		    			<li><a class="dropdown-item" href="<c:url value='/member/login' />">로그인</a></li>
						<li><a class="dropdown-item" href="<c:url value='/member/join' />">회원가입</a></li>
		      		</ul>
	    		</li>
		  		</ul>
		  		<form>
		    		<input class="form-control" type="text" placeholder="검색" aria-label="검색">
		  		</form>
			</div>
		</div>
	</nav>
  
	<!-- 메인 -->
  	<main class="container">
  	<div class="bg-light p-5 rounded">
	    <h1>스프링 프레임워크 5(Spring Framework 5)로 작성된 홈페이지</h1>
	    <p class="lead">
	    	정도윤의 개인 홈페이지입니다. 스프링 프레임워크 및 MariaDB로 작성하였습니다.<br>
	    </p>
	    	<img src="<c:url value='/resources/images/home/home_introduce_1.png' />">
	    	<br>
	    <a class="btn btn-lg btn-danger" href="<c:url value='/cv' />/" role="button">CV 보기 &raquo;</a>
	</div>
  
	<div class="bg-light p-5 rounded">
	    <h1>Mybatis와 HikariCP가 적용된 웹 사이트</h1>
	    <p class="lead">
	    	Connection Pool인 HikariCP와 영속 프레임워크인 MyBatis를 적용하여 개발의 생산성을 높였습니다.<br>
	    </p>
    	<img src="<c:url value='/resources/images/home/home_introduce_2.png' />">
	</div>
</main>

</body>
</html>
