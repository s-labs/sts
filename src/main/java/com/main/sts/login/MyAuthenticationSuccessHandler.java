package com.main.sts.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class MyAuthenticationSuccessHandler extends
		SimpleUrlAuthenticationSuccessHandler {

	@Autowired
	private LoginService loginService;
	static Logger log = Logger.getLogger(MyAuthenticationSuccessHandler.class
			.getName());

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String name = auth.getName(); // get logged in username

		String role = null;
		try {
			Login admin = loginService.getDetails(name);

			role = admin.getRole();
			if (role.equals("ROLE_SCHOOLADMIN")) {
				setDefaultTargetUrl("/school_admin/homepage");
				logger.info("Admin: [ "+name+" ] has been logged in ");
			}
			
			super.onAuthenticationSuccess(request, response, authentication);
		} catch (NullPointerException e) {

			log.info("User Name [ " + name + " ] doesnot exists....");
		}
		// changeLastLoginTime(username)

	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

}