<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Using extra file</h3>
      <p>
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" row="person" rowIdBase="id" rowIdPrefix="toto_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" sortable="false" />
         <datatables:column title="Mail" property="mail" />
         <datatables:extraFile src="/js/datatables.extraFile.js" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="advanced/extrafile.jsp" doc="advanced.extrafile.html" />