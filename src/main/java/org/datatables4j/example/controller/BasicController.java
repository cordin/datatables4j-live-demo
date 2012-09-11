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
@RequestMapping("/basic")
public class BasicController extends BaseController {
	
	@RequestMapping(value="/default", method = RequestMethod.GET)
	public String goDefault(ModelMap model) {
		return "basic.default";
	}
	
	@RequestMapping(value="/sorting", method = RequestMethod.GET)
	public String goSorting(ModelMap model) {
		return "basic.sorting";
	}
	
	@RequestMapping(value="/multiple", method = RequestMethod.GET)
	public String goMultiple(ModelMap model) {
		return "basic.multiple";
	}
	
	@RequestMapping(value="/pagination", method = RequestMethod.GET)
	public String goPagination(ModelMap model) {
		return "basic.pagination";
	}
}