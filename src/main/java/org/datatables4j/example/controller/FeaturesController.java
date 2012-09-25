package org.datatables4j.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller for the features examples management.
 * 
 * @author tduchateau
 */
@Controller
@RequestMapping(value = "/features", method = RequestMethod.GET)
public class FeaturesController extends BaseController {
    
	@RequestMapping(value="/home")
	public String goHome(ModelMap model) {
		return "plugins.home";
	}
	
	@RequestMapping(value="/export")
	public String goExport() {
		return "plugins.export";
	}
	
	@RequestMapping(value="/compressor")
	public String goCompressor() {
		return "plugins.compressor";
	}
	
	@RequestMapping(value="/aggregator")
	public String goAggregator() {
		return "plugins.aggregator";
	}
}