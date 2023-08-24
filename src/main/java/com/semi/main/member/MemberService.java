package com.semi.main.member;

//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	//@Autowired
	//private HttpSession session;

	// login
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception{
		
		System.out.println("서비스 시작");
		
		return memberDAO.getLogin(memberDTO);
	}
	
	
	
}
