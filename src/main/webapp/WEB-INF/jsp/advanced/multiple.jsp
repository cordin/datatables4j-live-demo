<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span9">
      <h3>Multiple tables</h3>
      <p>
         DataTables4j can handle multiple tables on the same page.
      </p>
      <p>
         Just take care to give a unique ID to each table.
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span9">

      <datatables:table id="myTableId" data="${persons}" row="person" rowIdBase="id" rowIdPrefix="toto_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" sortable="false" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span9">

      <datatables:table id="myOtherTableId" data="${persons}" row="person" rowIdBase="id" rowIdPrefix="toto_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" sortable="false" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="advanced/multiple.jsp" doc="advanced.multiple.html" />