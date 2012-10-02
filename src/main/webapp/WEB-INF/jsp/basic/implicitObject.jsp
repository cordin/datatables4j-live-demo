<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Using implicit object</h3>
      <p>
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" row="person">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="Street" property="address.street1" />
        <datatables:column title="Mail">
            <a href="mailto:${person.mail}">${person.mail}</a>
        </datatables:column>
     </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/implicitObject.jsp" doc="basic.implicit.html" />