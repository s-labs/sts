package com.sts.controllers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
import org.springframework.web.servlet.ModelAndView;


import com.sts.service.StudentService;

@Controller
@RequestMapping(value = "/school_admin")
@PreAuthorize("isAuthenticated()")
@Secured("ROLE_SCHOOLADMIN")
public class StudentController {

	private static final Logger logger = Logger.getLogger(StudentController.class);
	
	@Autowired
	StudentService studentService;
	
	
	
	@RequestMapping(value = "/students_list", method = RequestMethod.GET)
	public ModelAndView studentsList(ModelAndView model,
			HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		model.setViewName("/school_admin/students_list");
		DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

		model.addObject("date", formatter.format(new Date()));

		model.addObject("login_name", auth.getName());
		model.addObject("current_page", "students_list");
		/*
		 * To check which role use is logged in
		 */
		if (request.isUserInRole("ROLE_SCHOOLADMIN")) {
			// System.out.println("School admin has logged in .....");
			studentService.addStudent();
		}
		return model;
	}
	@RequestMapping(value = "/addnewstudent", method = RequestMethod.GET)
	public ModelAndView addnewstudent(ModelAndView model,
			HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		model.setViewName("/school_admin/addnewstudent");
		DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

		model.addObject("date", formatter.format(new Date()));

		model.addObject("login_name", auth.getName());
		model.addObject("current_page", "students_list");
		/*
		 * To check which role use is logged in
		 */
		if (request.isUserInRole("ROLE_SCHOOLADMIN")) {
			// System.out.println("School admin has logged in .....");
			studentService.addStudent();
		}
		return model;
	}
	@RequestMapping(value = "/viewstudent", method = RequestMethod.GET)
	public ModelAndView viewstudent(ModelAndView model,HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		model.setViewName("/school_admin/viewstudent");
		DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

		model.addObject("date", formatter.format(new Date()));

		model.addObject("login_name", auth.getName());
		model.addObject("current_page", "students_list");
		/*
		 * To check which role use is logged in
		 */
		if (request.isUserInRole("ROLE_SCHOOLADMIN")) {
			// System.out.println("School admin has logged in .....");
			studentService.addStudent();
		}
		return model;
	}
}
