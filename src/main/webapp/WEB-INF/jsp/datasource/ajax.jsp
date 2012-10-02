<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<%@ taglib prefix="datatables" uri="http://github.com/datatables4j" %>

<div class="row">
   <div class="span12">
      <h3>AJAX data source</h3>
      <p>
         
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" url="/personsWs">
           <datatables:column title="Id" property="id"/>
           <datatables:column title="FirstName" property="firstName" />
           <datatables:column title="LastName" property="lastName" />
           <datatables:column title="Street" property="address.street1" />
           <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="datasource/ajax.jsp" doc="datasource.dom.html" />