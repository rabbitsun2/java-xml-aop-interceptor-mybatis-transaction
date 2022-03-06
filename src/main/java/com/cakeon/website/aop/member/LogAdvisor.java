package com.cakeon.website.aop.member;

import org.aspectj.lang.ProceedingJoinPoint;

public interface LogAdvisor {
	
	public void beforeAdvice();
	public void afterAdvice();
	public Object aroundAdvice(ProceedingJoinPoint pjp) throws Throwable;
	public void afterThrowing();
	public void afterReturning();
	
}
