<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>${param.title }</title>
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