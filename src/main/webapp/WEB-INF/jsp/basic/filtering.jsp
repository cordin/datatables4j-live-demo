<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Table filtering</h3>
      <p>
         By default, filtering is enabled but you can disable it using the <code>filter</code> table attribute.
      </p>
      <p>
         In the following example, the search top right box disappeared.
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" filter="false">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/filtering.jsp" doc="basic.filtering.html" />