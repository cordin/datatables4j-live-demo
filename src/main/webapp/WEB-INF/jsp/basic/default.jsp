<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row">
   <div class="span9">
      <h3>Default configuration</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span9">

      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/default.jsp" doc="basic.default.html" />