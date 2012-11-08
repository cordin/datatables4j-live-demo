package org.datatables4j.example.service;

import java.util.List;

import org.datatables4j.example.entity.Person;
import org.springframework.stereotype.Service;


/**
 * Service that manages the persons.
 * 
 * @author tduchateau
 */
@Service
public interface PersonService {

	/**
	 * Returns 100 persons among the full list.
	 * 
	 * @return List<Person> 100 persons.
	 */
	public List<Person> get100();
	
	/**
	 * Returns 1000 persons among the full list.
	 * 
	 * @return List<Person> 1000 persons.
	 */
	public List<Person> get1000();

}
