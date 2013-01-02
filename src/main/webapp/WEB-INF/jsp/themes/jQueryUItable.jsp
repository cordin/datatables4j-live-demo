<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../common/taglib.jsp" %>

<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css" rel="stylesheet">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>

<datatables:table id="myTableId" cssClass="display" data="${persons}" theme="jQueryUI" cdn="true">
    <datatables:column title="Id" property="id"/>
    <datatables:column title="FirstName" property="firstName"/>
    <datatables:column title="LastName" property="lastName"/>
    <datatables:column title="Street" property="address.street1"/>
    <datatables:column title="Mail" property="mail"/>
</datatables:table>