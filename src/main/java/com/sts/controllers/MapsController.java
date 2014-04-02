package com.sts.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/school_admin")
@PreAuthorize("isAuthenticated()")
@Secured("ROLE_SCHOOLADMIN")
public class MapsController {
	@RequestMapping(value = "/maps", method = RequestMethod.GET)
	public ModelAndView mapHome(ModelAndView model,
			HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		model.setViewName("/school_admin/mapsHome");
		model.addObject("current_page", "maps");
		/*
		 * To check which role use is logged in
		 */
		if (request.isUserInRole("ROLE_SCHOOLADMIN")) {
			// System.out.println("School admin has logged in .....");
		}
		return model;
	}
	

}
