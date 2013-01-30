package com.github.datatables4j.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.datatables4j.core.base.ajax.DataSet;
import com.github.datatables4j.core.base.ajax.DatatablesCriterias;
import com.github.datatables4j.demo.dao.PersonDao;
import com.github.datatables4j.demo.entity.Person;
import com.github.datatables4j.demo.service.PersonService;

/**
 * Implementation of the Person service.
 * 
 * @author tduchateau
 */
@Service
public class PersonServiceJpaImpl implements PersonService {

	@Autowired
	private PersonDao personDao;

	/**
	 * {@inheritDoc}
	 */
	public List<Person> findAll() {
		return personDao.findAll();
	}

	/**
	 * {@inheritDoc}
	 */
	public List<Person> findLimited(int maxResult) {
		return personDao.findLimited(maxResult);
	}

	/**
	 * {@inheritDoc}
	 */
	public DataSet<Person> findPersonsWithDatatablesCriterias(DatatablesCriterias criterias) {

		List<Person> persons = personDao.findPersonWithDatatablesCriterias(criterias);
		Long count = personDao.getTotalCount();
		Long countFiltered = personDao.getFilteredCount(criterias);

		return new DataSet<Person>(persons, count, countFiltered);
	}
}