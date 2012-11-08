<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Table paging</h3>
      <p>
         By default, pagination is enabled but you can disable it using the <code>paginate</code> table attribute.
      </p>
      <p>
         You can also change the default pagination type ("two_buttons") by setting the <code>paginationType</code> table attribute to <tt>full_numbers</tt>.     
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" paginationType="full_numbers">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/paging.jsp" doc="basic.paging.html" />