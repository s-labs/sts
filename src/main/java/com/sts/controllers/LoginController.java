package com.sts.controllers;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController extends SavedRequestAwareAuthenticationSuccessHandler {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginPage(ModelMap model, Principal principal){
		//System.out.println(" DB ==> "+loginService.getAdminDetails("admin", "admin123"));
		return "redirect:/login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session, HttpServletRequest request,ModelMap model, Principal principal){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 
		if (!(auth instanceof AnonymousAuthenticationToken)) {

		     //System.out.println(auth.getAuthorities());
		     if (request.isUserInRole("ROLE_SENIORADMIN")) {
		    	 return "redirect:/senior/homepage";
		     }
		     else if (request.isUserInRole("ROLE_SCHOOLADMIN")){
		    	 return "redirect:/school_admin/homepage";
		     }
		     else
		    	 return "redirect:/404";
		}
		else
			return "login";
		
	}
	 @RequestMapping(value="/loginfailed", method = RequestMethod.GET)  
	 public String loginerror(ModelMap model) {  
	   
	  model.addAttribute("error", "true");  
	  return "login";  
	   
	 }  
	   
	 @RequestMapping(value="/logout", method = RequestMethod.GET)  
	 public String logout(ModelMap model) {  
	  model.addAttribute("logout", "successfull");  
	  return "login";  
	   
	 }  
	 @RequestMapping(value="/404", method = RequestMethod.GET)  
	 public String accessDenied(ModelMap model) {  
	   
	  return "404";  
	   
	 }  
	 /*public String getLoggedUserDetails() {
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();

			if (!(auth instanceof AnonymousAuthenticationToken)) {

			     The user is logged in :) 
			    return "redirect:/home";
			}
			else
				return "redirect:/login";
		}*/
}
