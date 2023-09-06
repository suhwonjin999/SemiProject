var naver_id_login = new naver_id_login("r6eVt2waeuOw7uHsH9OU", "http://localhost:82/member/callback");
var state = naver_id_login.getUniqState();
naver_id_login.setButton("white", 2,40);
naver_id_login.setDomain("http://localhost:82/member/naverLogin");
naver_id_login.setState(state);
naver_id_login.setPopup();
naver_id_login.init_naver_id_login();