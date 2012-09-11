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
@RequestMapping("/datasource")
public class DatasourceController extends BaseController {
	
	@RequestMapping(value="/dom", method = RequestMethod.GET)
	public String goDom(ModelMap model) {
		return "ds.dom";
	}
	
	@RequestMapping(value="/arrayofarrays", method = RequestMethod.GET)
	public String goArrayOfArrays(ModelMap model) {
		return "ds.arrayofarrays";
	}
	
	@RequestMapping(value="/arrayofobjects", method = RequestMethod.GET)
	public String goArrayOfObjects(ModelMap model) {
		return "ds.arrayofobjects";
	}
}