<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Row id</h3>
      <p>
      </p>
      <hr />
   </div>
</div>

<div class="row">   
   <div class="span12">
      <h4>Example</h4>
      <p>
         Take a look at the generated row id. 
      </p>
   </div>
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" rowIdBase="id" rowIdPrefix="person_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="advanced/rowid.jsp" doc="advanced.rowid.html" />