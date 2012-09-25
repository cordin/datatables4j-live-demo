package org.datatables4j.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller for the basic examples management.
 * 
 * @author tduchateau
 */
@Controller
@RequestMapping(value = "/basic", method = RequestMethod.GET)
public class BasicController extends BaseController {
	
	@RequestMapping(value="/home")
	public String goHome() {
		return "basic.home";
	}
	
	@RequestMapping(value="/default")
	public String goDefault() {
		return "basic.default";
	}
	
	@RequestMapping(value="/info")
	public String goInfo() {
		return "basic.info";
	}
	
	@RequestMapping(value="/sorting")
	public String goSorting() {
		return "basic.sorting";
	}
	
	@RequestMapping(value="/filtering")
	public String goFiltering() {
		return "basic.filtering";
	}
	
	@RequestMapping(value="/pagination")
	public String goPagination() {
		return "basic.pagination";
	}
	
	@RequestMapping(value="/lengthchange")
	public String goLengthchange() {
		return "basic.lengthchange";
	}

	@RequestMapping(value="/autowidth")
	public String goAutowidth() {
		return "basic.autowidth";
	}
	
	@RequestMapping(value="/dom")
	public String goDom() {
		return "basic.dom";
	}
	
	@RequestMapping(value="/ajax")
	public String goAjax() {
		return "basic.ajax";
	}
	
	@RequestMapping(value="/implicitObject")
	public String goImplicitObject() {
		return "basic.implicitObject";
	}
	
	@RequestMapping(value="/styles")
	public String goStyles() {
		return "basic.styles";
	}
}