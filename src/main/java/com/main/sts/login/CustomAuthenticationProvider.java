package com.main.sts.login;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.switchuser.SwitchUserGrantedAuthority;
import org.springframework.stereotype.Component;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private LoginService loginService;
	 private static final Logger logger = Logger.getLogger(CustomAuthenticationProvider.class);
	@Override
	public Authentication authenticate(Authentication authentication) {
		String name = authentication.getName();
		String password = authentication.getCredentials().toString();

		try {

			Login login = loginService.getDetails(name);
			// System.out.println(login);
			String role = null;
			if (login == null) {
				return null;
			} else {
				if (name.equals(login.getLogin_id())
						&& password.equals(login.getPassword())) {
					// System.out.println(school_name);
					role = login.getRole();
					List<GrantedAuthority> grantedAuths = new ArrayList<GrantedAuthority>();
					grantedAuths.add(new SwitchUserGrantedAuthority(role,
							authentication));
					Authentication auth = new UsernamePasswordAuthenticationToken(
							name, password, grantedAuths);
					
					return auth;
				} else {
					return null;
				}
			}

		} catch (Exception e) {
			e.printStackTrace(System.out);

			return null;
		}

	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

}