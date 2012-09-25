<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables4j"%>

<datatables:table id="myTableId" data="${persons}" row="person" rowIdBase="id" rowIdPrefix="toto_" colReorder="true" cdn="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="Street" property="address.street1" sortable="false" />
   <datatables:column title="Mail" property="mail" />
   <datatables:extraFile src="/js/datatables.extraFile.js" />
   <datatables:prop name="datatables4j.aggregator.enable" value="false" />
   <%--<datatables:extraConf src="/js/datatables.extraConf.js" /> --%>
</datatables:table>

<datatables:table id="myTableId2" data="${persons}" row="person" rowIdBase="id" rowIdPrefix="toto_" colReorder="true" cdn="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="Street" property="address.street1" sortable="false" />
   <datatables:column title="Mail" property="mail" />
</datatables:table>

<br />

<p style="height: 500px;">&nbsp;</p>