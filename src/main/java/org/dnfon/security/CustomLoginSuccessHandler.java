package org.dnfon.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {

		System.out.println("Login Success");

		List<String> roleNames = new ArrayList<>();

		auth.getAuthorities().forEach(authority -> {

			roleNames.add(authority.getAuthority());

		});

		System.out.println("ROLE NAMES: " + roleNames);

		if (roleNames.contains("ROLE_ADMIN")) {

			System.out.println("허용되지 않은 관리자 페이지로 접근");
		}

		if (roleNames.contains("ROLE_MEMBER")) {

			response.sendRedirect("/");
			return;
		}

		response.sendRedirect("/");
	}
}


