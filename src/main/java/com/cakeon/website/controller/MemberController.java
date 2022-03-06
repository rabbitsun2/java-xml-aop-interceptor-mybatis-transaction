package com.cakeon.website.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.print.attribute.standard.DateTimeAtCompleted;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cakeon.website.service.aop.MemberService;
import com.cakeon.website.service.aop.MemberServiceImpl;
import com.cakeon.website.vo.MemberPointVO;
import com.cakeon.website.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	@Qualifier("memberService")
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
		
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		ModelAndView mav = new ModelAndView();
		model.addAttribute("serverTime", formattedDate );
		
		mav.setViewName("member/login");
		
		return mav;
		
	}
	

	@RequestMapping(value = "loginCheck", method = RequestMethod.POST)
	public ModelAndView loginCheck(Locale locale, 
															Model model, 
															MemberVO member,
															HttpServletRequest req,
															HttpServletResponse res) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		// logger.info("이메일:" + member.getEmail());
		
		ModelAndView mav = new ModelAndView();

		MemberVO vo = service.selectMember(member);
		
		if ( vo != null ) {
			mav.setViewName("redirect:/");
		}
		
		else if ( vo == null ) {
			mav.addObject("message", "계정 정보를 입력하세요.");
			mav.addObject("location", req.getContextPath() + "/" + "a");
			mav.setViewName("common/location_alert");
		}
		
		return mav;
		
	}
	

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public ModelAndView join(Locale locale, Model model) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		ModelAndView mav = new ModelAndView();
		model.addAttribute("serverTime", formattedDate );
		
		mav.setViewName("member/join");
		
		return mav;
		
	}
	

	@RequestMapping(value = "joinCheck", method = RequestMethod.POST)
	public ModelAndView joinCheck(Locale locale, 
															Model model, 
															MemberVO member,
															String passwd2,
															HttpServletRequest req,
															HttpServletResponse res) {

		MemberPointVO point = new MemberPointVO();
		point.setPoint(10);		// 초기 포인트값
		
		Date date = new Date();
		ModelAndView mav = new ModelAndView();
		
		logger.info("Welcome home! The client locale is {}.", locale);
		logger.info("이메일:" + member.getEmail());
		logger.info("비밀번호:" + member.getPasswd());
		
		if ( !passwd2.equals(member.getPasswd()) ) {

			mav.addObject("message", "비밀번호가 일치하지 않습니다.");
			mav.addObject("location", req.getContextPath() + "/member/join");
			mav.setViewName("common/location_alert");
			
			return mav;
		}
		
		member.setLocked(0);
		member.setRemember(0);
		member.setRegidate(date);
				
		int result = service.insertMember(member, point);
		
		if ( result == 0) {
			
			mav.addObject("message", "예기치 못한 오류가 발생하였습니다.");
			mav.addObject("location", req.getContextPath() + "/member/join");
			mav.setViewName("common/location_alert");
			
			return mav;
		}
		
		mav.setViewName("redirect:/");
		
		return mav;
		
	}
	
}
