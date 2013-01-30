package com.github.datatables4j.demo.ajax;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.datatables4j.core.base.ajax.DataSet;
import com.github.datatables4j.core.base.ajax.DatatablesCriterias;
import com.github.datatables4j.core.base.ajax.DatatablesResponse;
import com.github.datatables4j.demo.entity.Person;
import com.github.datatables4j.demo.service.PersonService;
import com.github.datatables4j.spring3.ajax.DatatablesParams;

/**
 * <p>
 * Spring MVC controller that exposes Web Services that are consumed by
 * DataTables.
 * <p>
 * Given that Datatables only consumes JSON for now, it is crucial that Jackson
 * is in the webapp classpath for the POJO convertion in JSON format.
 * 
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(method = RequestMethod.GET)
public class SpringMvcAjaxController {

	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/persons")
	public @ResponseBody
	List<Person> findAll(HttpServletRequest request) {
		return personService.findAll();
	}

	@RequestMapping(value = "/persons1", method = RequestMethod.GET)
	public @ResponseBody
	DatatablesResponse<Person> findAllForDataTables(HttpServletRequest request) {
		DatatablesCriterias criterias = DatatablesCriterias.getFromRequest(request);
		DataSet<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias);
		return DatatablesResponse.build(persons, criterias);
	}

	@RequestMapping(value = "/persons2")
	public @ResponseBody
	DatatablesResponse<Person> findAllForDataTablesFullSpring(@DatatablesParams DatatablesCriterias criterias) {
		DataSet<Person> dataSet = personService.findPersonsWithDatatablesCriterias(criterias);
		return DatatablesResponse.build(dataSet, criterias);
	}
}