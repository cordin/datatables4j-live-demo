package org.datatables4j.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller for the datasources examples management.
 * 
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(value = "/datasource", method = RequestMethod.GET)
public class DatasourceController extends BaseController {
	
	@RequestMapping(value="/dom")
	public String goDom() {
		return "datasource.dom";
	}
	
	@RequestMapping(value="/ajax")
	public String goAjax() {
		return "datasource.ajax";
	}
}