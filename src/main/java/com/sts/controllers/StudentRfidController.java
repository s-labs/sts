package com.sts.controllers;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sts.model.StudentRfidEntity;
import com.sts.service.StudentRfidService;

@Controller
@RequestMapping(value = "/school_admin")
@PreAuthorize("isAuthenticated()")
@Secured("ROLE_SCHOOLADMIN")
public class StudentRfidController {
	
	@Autowired
	StudentRfidService studentRfidService;
	
	
	@RequestMapping(value = "/students_rfid_list", method = RequestMethod.GET)
	public ModelAndView seniorHomePage(ModelAndView model,
			HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		model.setViewName("/school_admin/students_rfid_list");
		model.addObject("current_page", "students_rfid_list");
		
		/*
		 * To check which role use is logged in
		 */
		if (request.isUserInRole("ROLE_SCHOOLADMIN")) {
			// System.out.println("School admin has logged in .....");
		}
		return model;
	}

	@RequestMapping(value = "/addStudentRfid", method = RequestMethod.GET)
	public ModelAndView addStudentRfid(ModelAndView model,
			HttpServletRequest request, StudentRfidEntity studentRfidEntity) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		System.out.println("addStudentRfid() of StudentRfidController");
		
		boolean flag=studentRfidService.storeStudent(studentRfidEntity);
		
		
		
		
		model.setViewName("/school_admin/students_rfid_list");
		model.addObject("current_page", "students_rfid_list");
		
		/*
		 * To check which role use is logged in
		 */
		if (request.isUserInRole("ROLE_SCHOOLADMIN")) {
			// System.out.println("School admin has logged in .....");
		}
		return model;
	}
	
	
	/*public String storeStudentInformation(StudentDao studentDao){
		System.out.println("storeStudentInfo method");
		logger.info("in storeStudentInfo(");
		boolean aa=studentService.storeStudent(studentDao);
		if(aa==true){
			
			return "school_admin/success";
		}
		return "redirect:/school_admin/students.jsp";
	}
	*/
	
}
