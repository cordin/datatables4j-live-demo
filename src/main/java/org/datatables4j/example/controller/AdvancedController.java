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
@RequestMapping(value = "/advanced", method = RequestMethod.GET)
public class AdvancedController extends BaseController {
	
	@RequestMapping(value="/home")
	public String goHome() {
		return "advanced.home";
	}
	
	@RequestMapping(value="/rowid")
	public String goRowId() {
		return "advanced.rowid";
	}
	
	@RequestMapping(value="/extraconf")
	public String goExtraConf() {
		return "advanced.extraconf";
	}
	
	@RequestMapping(value="/extrafile")
	public String goExtraFile() {
		return "advanced.extrafile";
	}
	
	@RequestMapping(value="/override")
	public String goOverride() {
		return "advanced.override";
	}
	
	@RequestMapping(value="/multiple")
	public String goMultiple() {
		return "advanced.multiple";
	}
	
	@RequestMapping(value="/ninja")
	public String goNinja() {
		return "advanced.ninja";
	}
}