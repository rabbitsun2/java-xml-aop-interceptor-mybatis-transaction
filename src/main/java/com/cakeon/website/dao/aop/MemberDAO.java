package com.cakeon.website.dao.aop;

import com.cakeon.website.vo.MemberPointVO;
import com.cakeon.website.vo.MemberVO;

public interface MemberDAO {
	
	public MemberVO selectMember(MemberVO member);
	
	// 트랜젝션 연습
	public int insertMember(MemberVO member, MemberPointVO point);
	
	public int insertMemberPoint(MemberPointVO point);
}
