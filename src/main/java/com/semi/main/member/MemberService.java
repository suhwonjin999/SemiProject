package com.semi.main.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;


@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	private ApplicationContext context;
	
	
	//@Autowired
	//private HttpSession session;

	// login
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception{
		
		System.out.println(memberDTO.getUserId());
		
		return memberDAO.getLogin(memberDTO);
	
	}
	
	// Naver login
	/*
	 * public String getnaverLogin(String type) throws Exception{ String baseUrl =
	 * context.get }
	 */

}
