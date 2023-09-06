<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">

	<!-- 네이버 로그인 API -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<title>Login</title>
</head>
<body>
<!-- ======= Join Section ======= -->
	<section class="container">
		<h1 class="text-center">Naver Login Page</h1>
	
		<!-- 네이버 로그인 버튼 노출 영역 -->
	    <div id="naver_id_login">
	    	<input type="button" value="네이버 로그인">
	    </div>
	
	</section>
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<!-- 	<script src="/resources/js/naverlogin.js"></script> -->
	<script src="/resources/js/naverLogin.js"></script>
	
</body>
</html>