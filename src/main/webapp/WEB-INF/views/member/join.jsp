<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<jsp:include page="../include/html_header.jsp">
	<jsp:param name="title" value="회원가입" />
</jsp:include>
	<style>
		.cakeon_login_tbl {
			width:100%;
		    margin-left:auto; 
		    margin-right:auto;
		}
	</style>
	<!-- 메인 -->
  	<main class="container">
  	<div class="bg-light p-5 rounded">
		<table class="cakeon_login_tbl">
			<tr>
				<td>
					<h1>회원가입</h1>
					<form class="form-horizontal" action="<c:url value='/member/joinCheck' />" method="POST">
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">이메일</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" name="email" id="inputEmail" placeholder="Email"  required>
						    </div>
						    <div class="invalid-feedback"> 이메일을 입력해주세요. </div>
						  </div>
						  <div class="form-group">
						    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
						    <div class="col-sm-10">
						      <input type="password" class="form-control" name="passwd" id="inputPassword3" placeholder="Password" required>
						    </div>
						    <div class="invalid-feedback"> 비밀번호를 입력해주세요. </div>
						  </div>
						  
						  <div class="form-group">
						    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
						    <div class="col-sm-10">
						      <input type="password" class="form-control" name="passwd2" id="inputPassword3" placeholder="Password" required>
						    </div>
						    <div class="invalid-feedback"> 비밀번호를 입력해주세요. </div>
						  </div>
						  
						  <div class="form-group">
						  		<div class="col-sm-offset-2 col-sm-10">
						  		&nbsp;
						  		</div>
						  </div>
						  <div class="form-group">
						  		<div class="col-sm-offset-2 col-sm-10">
						      		<button type="submit" class="btn btn-default btn-primary">회원가입</button>
						    	</div>
						  </div>
						</form>
				</td>
			</tr>
	</table>

	</div>
	</main>


</body>
</html>