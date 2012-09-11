<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables-taglib"%>

<div class="row">
   <div class="span12">
      <h3>Multiple tables</h3>
      <p>
         The example below shows how to initialize multiple tables on the same page.
      </p>
      <p>
         You just need to set a different id, using <strong>htmlTableId</strong> attribute.
      </p>
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table htmlTableId="firstTable" dataObjectId="row" data="${persons}">
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
      <datatables:table htmlTableId="secondTable" dataObjectId="row" data="${persons}">
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
            <p>src/main/webapp/WEB-INF/jsp/basic/multiple.jsp</p>
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
