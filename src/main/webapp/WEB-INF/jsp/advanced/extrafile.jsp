<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row">
   <div class="span9">
      <h3>Using extra file</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span9">
      <h4>Example : custom row filtering</h4>
   </div>
   <div class="span9" style="text-align: center;">
      <br />
      <p>
         <select class="input-medium" id="lastNameChoice">
            <option value="All">All</option>
            <option value="Carpenter">Carpenter</option>
            <option value="Holloway">Holloway</option>
            <option value="Peck">Peck</option>
            <option value="Pena">Pena</option>
            <option value="Wilder">Wilder</option>
         </select> <i class="icon-arrow-left"></i> try to change the selected item
      </p>
   </div>
   <div class="span9">

      <datatables:table id="myTableId" data="${persons}">
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