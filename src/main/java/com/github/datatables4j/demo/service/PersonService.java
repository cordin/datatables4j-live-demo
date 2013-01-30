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

	public List<Person> findAll();
	
	/**
	 * TODO
	 * @param criterias
	 * @return
	 */
	public DataSet<Person> findPersonsWithDatatablesCriterias(DatatablesCriterias criterias);
}