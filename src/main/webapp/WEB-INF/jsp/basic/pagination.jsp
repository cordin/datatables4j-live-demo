<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables-taglib"%>

<div class="row">
   <div class="span12">
      <h3>Pagination</h3>
      <div class="well well-small">
         <p>
            The example below shows how to change the pagination type.
         </p>
         <p>
            By default, the <strong>paginationType</strong> attribute is set to <strong>two_buttons</strong>. You can choose <strong>full_numbers</strong> too.
         </p>
      </div>
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table htmlTableId="myTable" dataObjectId="row" data="${persons}" paginationType="full_numbers">
         <datatables:column title="#" property="id" />
         <datatables:column title="Name" property="lastName" sortable="true" />
         <datatables:column title="Mail" property="mail" sortable="true" />
         <datatables:column title="City" sortable="true">
            <c:out value="${row.address.town.label}" />
         </datatables:column>
         <datatables:column title="Street">
            <c:out value="${row.address.street1}"></c:out>
         </datatables:column>
      </datatables:table>

   </div>
</div>

<br />

<div class="row">
   <div class="span12">
      <div class="bs-docs-example">
         <small>
            <h5>JSP</h5>
            <p>src/main/webapp/WEB-INF/jsp/basic/pagination.jsp</p>
            <h5>JS</h5>
            <ul>
               <li>src/main/webapp/js/jquery-1.7.2.min.js</li>
               <li>src/main/webapp/js/bootstrap.min.js</li>
               <li>src/main/webapp/js/jquery.dataTables.min.js</li>
            </ul>
            <h5>CSS</h5>
            <ul>
               <li>src/main/webapp/css/bootstrap.min.js</li>
               <li>src/main/webapp/js/jquery.dataTables.min.js</li>
            </ul>
         </small>
      </div>
   </div>
</div>
