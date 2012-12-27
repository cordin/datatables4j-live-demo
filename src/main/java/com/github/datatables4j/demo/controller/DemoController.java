package com.github.datatables4j.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.datatables4j.demo.entity.Person;
import com.github.datatables4j.demo.service.PersonService;

/**
 * Controllers for the all demo examples.
 * 
 * @author tduchateau
 */
@Controller
@RequestMapping(method = RequestMethod.GET)
public class DemoController {
	
	@Autowired
	private PersonService personCoordinator;
	
	@ModelAttribute("persons")
	public List<Person> populateTable(){
		return personCoordinator.get100();
	}
	
	@RequestMapping(value="/personsWs", method = RequestMethod.GET)
	public @ResponseBody List<Person> getPersonss(){
		return personCoordinator.get100();
	}
	
	@RequestMapping(value="/basic/{page}")
	public String goToBasicExample(@PathVariable String page){
		return "basic." + page;
	}
	
	@RequestMapping(value="/advanced/{page}")
	public String goToAdvancedExample(@PathVariable String page){
		return "advanced." + page;
	}
	
	@RequestMapping(value="/features/{page}")
	public String goToFeatureExample(@PathVariable String page){
		return "features." + page;
	}
	
	@RequestMapping(value="/themes/{page}")
	public String goToThemeExample(@PathVariable String page){
		return "themes." + page;
	}
	
	@RequestMapping(value="/plugins/{page}")
	public String goToPluginExample(@PathVariable String page){
		return "plugins." + page;
	}
	
}