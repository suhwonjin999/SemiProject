<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<title>Naver Login</title>
</head>
<body>

    <script type="text/javascript">
        var naver_id_login = new naver_id_login("r6eVt2waeuOw7uHsH9OU", "http://localhost:82/member/callback");
          // 접근 토큰 값 출력
          alert(naver_id_login.oauthParams.access_token);
          // 네이버 사용자 프로필 조회
          naver_id_login.get_naver_userprofile("naverSignInCallback()");
          // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
          var email, username, id, img;
          function naverSignInCallback() {
              // 토큰에 있는 프로필 정보 가져와서 저장
              // email
              email = naver_id_login.getProfileData('email');
              // 별명
              username = naver_id_login.getProfileData('nickname');
              // id
              id = naver_id_login.getProfileData('id');
              // 프로필 사진
              img = naver_id_login.getProfileData('profileImage');
              
              // 정보 가지고 가서 저장할 url
              var url = "http://" + window.location.hostname + 
              		( (location.port==""||location.port==undefined)?"":":" + location.port) + "최종 로그인 url"; 
              
              // 함수 호출
              post_to_url( url, {'id': id, 'username': username, 'email': email, 'img': img})
          }
          
    </script>
	
</body>
</html>