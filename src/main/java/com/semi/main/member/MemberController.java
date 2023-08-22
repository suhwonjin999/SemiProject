package com.semi.main.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	/** 로그인 페이지 */
	@RequestMapping(value="login")
	public ModelAndView login(Model model) throws Exception {
		
		return new ModelAndView("");
	}
	
	

}
