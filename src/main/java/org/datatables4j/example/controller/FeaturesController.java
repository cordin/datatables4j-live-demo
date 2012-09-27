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
		return "features.home";
	}
	
	@RequestMapping(value="/export")
	public String goExport() {
		return "features.export";
	}
	
	@RequestMapping(value="/compressor")
	public String goCompressor() {
		return "features.compressor";
	}
	
	@RequestMapping(value="/aggregator")
	public String goAggregator() {
		return "features.aggregator";
	}
}