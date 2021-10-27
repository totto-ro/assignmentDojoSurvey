package com.codingdojo.controllers;

//import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.models.Survey;


@Controller
public class MainController {
//	private static ArrayList<String> resultsInfo =new ArrayList<String>();
	
	@RequestMapping( value = "/", method = RequestMethod.GET )
	public String homePage( Model model ) {
		return "index.jsp";
	}
	
	@RequestMapping( value = "/result", method = RequestMethod.GET )
	public String resultsPage( Model model ) {
//		model.addAttribute("results", resultsInfo );
		return "result.jsp";
	}
	
	@RequestMapping( value = "/create/survey", method = RequestMethod.POST )
	public String getResults( @RequestParam( value = "name" ) String name,
							  @RequestParam( value = "location" ) String location,
							  @RequestParam( value = "language" ) String language,
							  @RequestParam( value = "comments" ) String comments,
							  RedirectAttributes redirectAttributes, Model model ) {
		
		if( name.equals("") || location.equals("") || language.equals("") ) {
			redirectAttributes.addFlashAttribute("error", "You need to fill all the inputs with *" );
			return "redirect:/";
		}

		Object results = new Survey(name, location, language, comments); 
		model.addAttribute("results", results );
		
//		resultsInfo.add( new Survey (name, location, language, comments) );
		
		//resultsInfo.add(name);
		//resultsInfo.add(location);
		//resultsInfo.add(language);
		//resultsInfo.add(comments);
		
		System.out.println( results );
		//return "redirect:/result";
		return "result.jsp";
	}

}
