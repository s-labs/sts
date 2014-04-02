package com.sts.controllers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.main.sts.login.CustomAuthenticationProvider;
import com.main.sts.login.Login;
import com.main.sts.login.LoginService;

import com.sts.school.SchoolService;

@Controller
@RequestMapping(value = "/school_admin")
@PreAuthorize("isAuthenticated()")
@Secured("ROLE_SCHOOLADMIN")
public class SchoolAdminController {

	private static final Logger logger = Logger
			.getLogger(SchoolAdminController.class);
	@Autowired
	LoginService loginService;
	
	@Autowired
	SchoolService schoolService;

	// Senior Admin Home page --> By Default it shows Schools List
	@RequestMapping(value = "/homepage", method = RequestMethod.GET)
	public ModelAndView seniorHomePage(ModelAndView model,
			HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		model.setViewName("/school_admin/homepage");
		DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

		model.addObject("date", formatter.format(new Date()));

		model.addObject("login_name", auth.getName());
		model.addObject("current_page", "homepage");
		/*
		 * To check which role use is logged in
		 */
		if (request.isUserInRole("ROLE_SCHOOLADMIN")) {
			// System.out.println("School admin has logged in .....");
		}
		return model;
	}

	@RequestMapping(value = "verifypassword", method = RequestMethod.GET)
	public @ResponseBody
	String verifyPassword(HttpServletRequest req) {
		try {
			// System.out.println(req.getParameter("password"));
			Login login = schoolService.getPassword(req
					.getParameter("password"));
			// System.out.println(login);
			if (login == null) {
				return "notok";
			} else {
				return "ok";
			}

		} catch (Exception e) {

			return "notok";
		}

	}

	@RequestMapping(value = "changepasswordrequest", method = RequestMethod.GET)
	public @ResponseBody
	String changepasswordrequest(HttpServletRequest req) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		try {
			// System.out.println(req.getParameter("c_newpass"));
			Login login = schoolService.changePassword(
					req.getParameter("c_pass"), req.getParameter("c_newpass"));
			// System.out.println(login);
			if (login == null) {
				return "notok";
			} else {
				logger.info("password has been changed by user [ "
						+ auth.getName() + " ]");
				return "ok";
			}

		} catch (Exception e) {

			return "notok";
		}

	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public ModelAndView changePassword(ModelAndView model) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		model.setViewName("/school_admin/changepassword");
		model.addObject("date", new Date());

		model.addObject("login_name", auth.getName());
		model.addObject("current_page", "changepassword");
		return model;
	}
}
