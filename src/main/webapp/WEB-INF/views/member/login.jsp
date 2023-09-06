<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	// 로그인 되어 있으면 메인페이지로 강제 이동
	if (session.getAttribute("member") != null && session.getAttribute("member") != "") {
		response.sendRedirect("/");
	}
	// 이전 페이지 기록
    String referer = request.getHeader("member");
    if(referer==null)referer = "/";
%>
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
		<h1 class="text-center">Login Page</h1>

	
	<!-- login form -->
	<!--  action="${pageContext.request.contextPath}/login.com -->
	<form role="form" method="post" id="loginfrm" action="./login.com" enctype="multipart/form-data" autocomplete="off">
		<fieldset>
		<div class="form-group">
			<label for="id" class="col-sm-2">ID</label>
			<%-- <input type="text" name="userId" value="${cookie.id.value}" id="userId" placeholder="ID를 입력하세요"> --%>
			<input type="text" name="userId" value="${cookie.id.value}"  id="userId"  placeholder="ID를 입력하세요"> 
		</div>
		
		<div class="form-group">
			<label for="pw" class="col-sm-2">PASSWORD</label>
			<input type="password" name="userPw"  id="pw" value="" placeholder="비밀번호를 입력하세요">
		</div>
		
		<div class="checkbox col-sm-offset-2">
			<span>
				<label for="idSave">아이디 저장</label>
				<input type="checkbox" id="idSave" name="idSave" autocapitalize="off" <c:if test="${cookie.id.value != null && cookie.id.value != ''}">checked</c:if>> 			
			</span>
			<span>
				<label for="idStateful">로그인 상태유지</label>
				<input type="checkbox" id="idStateful" autocapitalize="off" <c:if test="${cookie.idStateful.value != null && cookie.idStateful.value != ''}">checked</c:if>>
				<input type="hidden" name="idStateful" id="ids" value="" />			
			</span>
		</div> 
		
	<div class="mb-3">
		<button type="button" id="loginbtn" class="btn-book-a-table">로그인</button>
	</div>
    
	</fieldset>
   </form>
   
   <div>
	   <p>- 소셜 계정으로 로그인 -</p>
	   
	   	<!-- 네이버 로그인 버튼 노출 영역 -->
	<div id="naver_id_login">
	<%
    String clientId = "r6eVt2waeuOw7uHsH9OU";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:82/member/callback", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
	%>
   <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
   </div>    
	    
   </div>
   
   <!-- 아이디 비번 찾기 및 회원가입 영역 -->
   <div class="loginEtc">
   		<a href="./findId" class="lnk_etc">아이디 찾기</a>
   		<em class="divi"> | </em>
   		<a href="./findPw" class="lnk_etc">비밀번호 찾기</a>
   		<em class="divi"> | </em>
   		<a href="./signUp" class="lnk_etc">회원가입</a>
   </div>
   
   <!-- 소셜 로그인 영역 -->
   <ul class="loginSocialLi">
		<li class="oddCol "><a href="./naverLogin" id="FBLoginSub_aBtnNaverLogin" onClick="callNaverAuth('R');dfinerySnsLogIn('Naver');" class="btn_social"><span class="bWrap"><em class="ico_social ico_na bgMem"></em><em class="txt">네이버 아이디로 로그인</em></span></a>  </li>
		<li class="evenCol"><a href="javascript:void(0);" id="FBLoginSub_aBtnKakaoLogin" onClick="callKakaoLogin();dfinerySnsLogIn('Kakao');" class="btn_social"><span class="bWrap"><em class="ico_social ico_ka bgMem"></em><em class="txt">카카오 아이디로 로그인</em></span></a>  </li>	
	</ul>
   
</section>	

	 <!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="/resources/js/login.js"></script>
	

	<!-- 네이버 로그인 초기화 Script -->	
 	<script type="text/javascript">
 	var naver_id_login = new naver_id_login("r6eVt2waeuOw7uHsH9OU", "http://localhost:82/member/callback");
 	var state = naver_id_login.getUniqState();
 	naver_id_login.setButton("white", 2,40);
 	naver_id_login.setDomain("http://localhost:82/member/naverLogin");
 	naver_id_login.setState(state);
 	naver_id_login.setPopup();
 	naver_id_login.init_naver_id_login();

 	
	</script>
  
</body>
</html>