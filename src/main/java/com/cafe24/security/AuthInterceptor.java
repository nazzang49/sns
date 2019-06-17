package com.cafe24.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cafe24.sns.vo.UserVO;

//컨트롤러 이동 전 반드시 거치게 되는 인터셉터 클래스
public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
						     HttpServletResponse response,
						     Object handler)
						     throws Exception {
		
		//1) 핸들러 종류 확인(디폴트 or 지정)
		if(!(handler instanceof HandlerMethod)) {
			return true;
		}
		
		//2) 캐스팅
		HandlerMethod handlerMethod = (HandlerMethod)handler;
		
		//3) 메소드의 @Auth 받기
		Auth auth = handlerMethod.getMethodAnnotation(Auth.class);
		
		//5) @Auth 어노테이션을 통해 인증 절차가 필요하지 않은 경우 = 통과
		if(auth==null) {
			return true;
		}
		
		//6) @Auth가 있을 시 인증 여부 확인
		HttpSession session = request.getSession();
		
		//세션 자체 X
		if(session==null) {
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
		}
		
		//인증된 사용자 X
		UserVO vo = (UserVO)session.getAttribute("authUser");
		if(vo==null) {
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
		}
		
		//7) role 확인(user or admin)
		Auth.Role role = auth.role();
		
		//8) user = 통과
		if(role==Auth.Role.USER) {
			return true;
		}
		return true;
	}
	
}
