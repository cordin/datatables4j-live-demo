<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables4j" %>

<datatables:table id="toto" data="${personsList}" row="person" rowIdBase="id" rowIdPrefix="toto_">
   <datatables:column title="Street" property="address.street1" sortable="false" />
   <datatables:column title="LastName">
      <a href="youhou">${person.lastName}</a>
   </datatables:column>   
   <datatables:column title="Mail">${person.mail}</datatables:column>
</datatables:table>

<br />
