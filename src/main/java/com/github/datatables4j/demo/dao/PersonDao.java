package com.github.datatables4j.demo.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import com.github.datatables4j.core.base.ajax.ColumnDef;
import com.github.datatables4j.core.base.ajax.DatatablesCriterias;
import com.github.datatables4j.demo.entity.Person;

/**
 * TEST AVEC SPRING et JPA
 * 
 * TODO voir les CriteriaBuilder
 * 
 * @author Thibault Duchateau
 */
@Repository
public class PersonDao {

	@PersistenceContext
	private EntityManager entityManager;

	public List<Person> findAll() {
		TypedQuery<Person> query = entityManager
				.createQuery("SELECT p FROM Person p", Person.class);
		return query.getResultList();
	}

	/**
	 * TODO
	 * 
	 * @param criterias
	 * @return
	 */
	public List<Person> findPersonWithDatatablesCriterias(DatatablesCriterias criterias) {

		StringBuilder queryBuilder = new StringBuilder("SELECT p FROM Person p");
		List<String> paramList = new ArrayList<String>();

		// Filtering
		if (StringUtils.isNotBlank(criterias.getSearch()) && criterias.hasOneFilterableColumn()) {
			queryBuilder.append(" WHERE ");

			for (ColumnDef columnDef : criterias.getColumnDefs()) {
				if (columnDef.isFilterable()) {
					paramList.add(" LOWER(p." + columnDef.getName()
							+ ") LIKE '%?%'".replace("?", criterias.getSearch().toLowerCase()));
				}
			}

			Iterator<String> itr = paramList.iterator();
			while (itr.hasNext()) {
				queryBuilder.append(itr.next());
				if (itr.hasNext()) {
					queryBuilder.append(" OR ");
				}
			}
		}

		// Sorting
		if (criterias.hasOneSortedColumn()) {

			List<String> orderParams = new ArrayList<String>();
			queryBuilder.append(" ORDER BY ");
			for (ColumnDef columnDef : criterias.getColumnDefs()) {
				System.out.println("field = " + columnDef);
				if (columnDef.isSorted()) {
					orderParams
							.add("p." + columnDef.getName() + " " + columnDef.getSortDirection());
				}
			}

			Iterator<String> itr2 = orderParams.iterator();
			while (itr2.hasNext()) {
				queryBuilder.append(itr2.next());
				if (itr2.hasNext()) {
					queryBuilder.append(" , ");
				}
			}
		}

		System.out.println("queryBuilder = " + queryBuilder);
		TypedQuery<Person> query = entityManager.createQuery(queryBuilder.toString(), Person.class);

		query.setFirstResult(criterias.getDisplayStart());
		query.setMaxResults(criterias.getDisplaySize());

		return query.getResultList();
	}

	/**
	 * TODO
	 * @param criterias
	 * @return
	 */
	public Long getFilteredCount(DatatablesCriterias criterias) {

		StringBuilder queryBuilder = new StringBuilder("SELECT p FROM Person p");
		List<String> paramList = new ArrayList<String>();

		// Filtering
		if (StringUtils.isNotBlank(criterias.getSearch()) && criterias.hasOneFilterableColumn()) {
			queryBuilder.append(" WHERE ");

			for (ColumnDef field : criterias.getColumnDefs()) {
				if (field.isFilterable()) {
					paramList.add(" LOWER(p." + field.getName()
							+ ") LIKE '%?%'".replace("?", criterias.getSearch().toLowerCase()));
				}
			}

			Iterator<String> itr = paramList.iterator();
			while (itr.hasNext()) {
				queryBuilder.append(itr.next());
				if (itr.hasNext()) {
					queryBuilder.append(" OR ");
				}
			}
		}

		Query query = entityManager.createQuery(queryBuilder.toString());
		return Long.parseLong(String.valueOf(query.getResultList().size()));
	}

	/**
	 * TODO
	 * @return
	 */
	public Long getTotalCount() {
		Query query = entityManager.createQuery("SELECT COUNT(p) FROM Person p");
		return (Long) query.getSingleResult();
	}
}
