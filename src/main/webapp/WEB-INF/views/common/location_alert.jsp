<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<jsp:include page="../include/html_header.jsp">
	<jsp:param name="title" value="로그인" />
</jsp:include>
	<style>
		.cakeon_login_tbl {
			width:100%;
		    margin-left:auto; 
		    margin-right:auto;
		}
	</style>
	<script>
		setTimeout("location.href='${location}'", 3000);
	</script>
		
	<!-- 메인 -->
  	<main class="container">
  	<div class="bg-light p-5 rounded">
		<table class="cakeon_login_tbl">
			<tr>
				<td>
					<h1>로그인</h1>
				</td>
			</tr>
			<tr>
				<td>
					<h5>${message }</h5>
				</td>
			</tr>
		</table>
	</div>
	</main>
</body>
</html>