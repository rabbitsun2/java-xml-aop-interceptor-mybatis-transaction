package com.cakeon.website.dao.aop;


import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.cakeon.website.vo.MemberPointVO;
import com.cakeon.website.vo.MemberVO;

//심각한 문제 
//(AOP를 걸어버리면, @Repository 충돌남. (SqlSessionFactory를 불러오는 순간 무언가 충돌남)
//@Repository
//@Repository("memberDao")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	@Qualifier("txManager")
	private DataSourceTransactionManager txManager;
		
	private static final String ns = "com.cakeon.website.mapper.MemberMapper";
	
	@Override
	public MemberVO selectMember(MemberVO member) {
	
		System.out.println("할렐루야");
		return sqlSession.selectOne(ns + ".selectMember", member);
				
	}

	@Override
	public int insertMember(MemberVO member, MemberPointVO point) {

		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");	// 날짜 양식
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setName("transaction");
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		
		TransactionStatus status = txManager.getTransaction(def);
		
		// 회원 정보
		paramMap.put("email", member.getEmail());
		paramMap.put("passwd", member.getPasswd());
		paramMap.put("remember", member.getRemember());
		paramMap.put("locked", member.getLocked());
		paramMap.put("regidate", format1.format(member.getRegidate()));
		
		try {
			
			sqlSession.insert(ns + ".insertMember", paramMap);
			MemberVO tmpVO = sqlSession.selectOne(ns + ".selectMember", member);
			
			point.setMember_id(tmpVO.getId());
			sqlSession.insert(ns + ".insertMemberPoint", point);
		}
		catch(Exception e) {
			System.out.println("오류:" + e.getMessage());
			txManager.rollback(status);
			return 0;
		}
		finally {
			
		}
		
		txManager.commit(status);
		
		return 1;
		
	}

	@Override
	public int insertMemberPoint(MemberPointVO point) {

		try {
			sqlSession.insert(ns + ".insertMemberPoint", point);
			sqlSession.commit();
		}
		catch(Exception e) {
			sqlSession.rollback();
		}
		finally {
			
		}
		
		return 1;
		
	}
	
}
