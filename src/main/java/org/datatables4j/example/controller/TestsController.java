package org.datatables4j.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller for the basic examples management.
 * 
 * @author tduchateau
 */
@Controller
@RequestMapping("/test")
public class TestsController extends BaseController {
	
	@RequestMapping(value="/test1", method = RequestMethod.GET)
	public String goTest1(ModelMap model) {
		return "tiles.test1";
	}
	
	@RequestMapping(value="/test2", method = RequestMethod.GET)
	public String goTest2(ModelMap model) {
		return "tiles.test2";
	}
}