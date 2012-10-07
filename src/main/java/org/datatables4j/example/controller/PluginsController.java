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
@RequestMapping(value = "/plugins", method = RequestMethod.GET)
public class PluginsController extends BaseController {
    
	@RequestMapping(value="/home")
	public String goHome(ModelMap model) {
		return "plugins.home";
	}
	
	@RequestMapping(value="/fixedheader")
	public String gofixedHeader() {
		return "plugins.fixedheader";
	}
	
	@RequestMapping(value="/scroller")
	public String goScroller() {
		return "plugins.scroller";
	}
	
	@RequestMapping(value="/colreorder")
	public String goColreorder() {
		return "plugins.colreorder";
	}
	
	@RequestMapping(value="/tabletools")
	public String goTableTools() {
		return "plugins.tabletools";
	}
	
	@RequestMapping(value="/combo")
	public String goCombo() {
		return "plugins.combo";
	}
	
	@RequestMapping(value="/comboaggreg")
	public String goComboAggreg() {
		return "plugins.comboaggreg";
	}

	@RequestMapping(value="/comboaggregcompress")
	public String goComboAggregCompress() {
		return "plugins.comboaggregcompress";
	}
	
	@RequestMapping(value="/addyourplugin")
	public String goAddyourplugin() {
		return "plugins.addyourplugin";
	}
}