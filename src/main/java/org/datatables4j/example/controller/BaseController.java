package org.datatables4j.example.controller;

import java.util.List;

import org.datatables4j.example.entity.Person;
import org.datatables4j.example.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * Base controller which populates request attributes used in all examples.
 * 
 * @author tduchateau
 */
@Controller
public class BaseController {
 
	@Autowired
	private PersonService personCoordinator;
	
	@ModelAttribute("personsList")
	public List<Person> populateTable(){
		return personCoordinator.get100();
	}
	
	@RequestMapping(value="personsWs", method = RequestMethod.GET)
	public @ResponseBody List<Person> getPersons(){
		return personCoordinator.get100();
	}
}