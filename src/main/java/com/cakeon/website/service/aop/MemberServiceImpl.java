package com.cakeon.website.service.aop;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cakeon.website.dao.aop.MemberDAO;
import com.cakeon.website.dao.aop.MemberDAOImpl;
import com.cakeon.website.vo.MemberPointVO;
import com.cakeon.website.vo.MemberVO;


public class MemberServiceImpl implements MemberService {

	//private MemberDAO dao = new MemberDAOImpl();
	
	//@Inject
	//@Named("memberDAO")

	@Autowired
	@Qualifier("memberDao")
	private MemberDAO dao;
	
	@Override
	public MemberVO selectMember(MemberVO member) {
		
		System.out.println("결과값: Hello World");
		
		return dao.selectMember(member);
		
		//return null;
	}

	@Override
	public int insertMember(MemberVO member, MemberPointVO point) {
		
		return dao.insertMember(member, point);
	}

	@Override
	public int insertMemberPoint(MemberPointVO point) {
		
		return dao.insertMemberPoint(point);
	}

}
