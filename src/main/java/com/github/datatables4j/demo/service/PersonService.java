package com.github.datatables4j.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.github.datatables4j.core.base.ajax.DataSet;
import com.github.datatables4j.core.base.ajax.DatatablesCriterias;
import com.github.datatables4j.demo.entity.Person;

/**
 * Service that manages the persons.
 * 
 * @author tduchateau
 */
@Service
public interface PersonService {

	/**
	 * @return the complete list of persons.
	 */
	public List<Person> findAll();

	/**
	 * @param maxResult
	 *            Max number of persons.
	 * @return a maxResult limited list of persons.
	 */
	public List<Person> findLimited(int maxResult);

	/**
	 * <p>
	 * Query used to populate the DataTables that display the list of persons.
	 * 
	 * @param criterias
	 *            The DataTables criterias used to filter the persons.
	 *            (maxResult, filtering, paging, ...)
	 * @return a bean that wraps all the needed information by DataTables to
	 *         redraw the table with the data.
	 */
	public DataSet<Person> findPersonsWithDatatablesCriterias(DatatablesCriterias criterias);
}