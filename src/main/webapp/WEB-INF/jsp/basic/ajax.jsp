<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/datatables4j" %>

<datatables:table id="toto" url="/personsWs">
   <datatables:column title="Street" property="address.street1" sortable="false" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="Mail" property="mail" />
</datatables:table>

<br />
blabla
<br />
blibli
<p style="height: 500px;">&nbsp;</p>
blublu
