package com.cakeon.website.service.aop;

import com.cakeon.website.vo.MemberPointVO;
import com.cakeon.website.vo.MemberVO;

public interface MemberService {

	public MemberVO selectMember(MemberVO member);

	public int insertMember(MemberVO member, MemberPointVO point);
	
	public int insertMemberPoint(MemberPointVO point);
	
}
