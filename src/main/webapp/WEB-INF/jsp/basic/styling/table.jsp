<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Styling table</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">
      <h4>Example 1 : global sorting activation/deactivation</h4>
   </div>
   <div class="span12">

      <datatables:table cssClass="table table-striped table-bordered" id="myTableId" data="${persons}" sort="false">
         <datatables:column title="Id" property="id"/>
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">   
   <div class="span12">
      <h4>Example 2 : individual column sorting</h4>
   </div>
   <div class="span12">
   
      <datatables:table id="mySecondTableId" data="${persons}">
         <datatables:column title="Id" property="id" sortable="false" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" sortable="false" />
      </datatables:table>
   
   </div>
</div>

<br />

<div class="row">   
   <div class="span12">
      <h4>Example 3 : column sorting initialisation </h4>
   </div>
   <div class="span12">
   
      <datatables:table id="myThirdTableId" data="${persons}">
         <datatables:column title="Id" property="id" sortable="false" />
         <datatables:column title="FirstName" property="firstName" sortInit="desc" />
         <datatables:column title="LastName" property="lastName" sortInit="desc" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" sortable="false" />
      </datatables:table>
   
   </div>
</div>

<br />

<div class="row">   
   <div class="span12">
      <h4>Example 4 : sorting direction control</h4>
      <p>
         Click several times on the Street and Mail header column
      </p>
   </div>
   <div class="span12">
   
      <datatables:table id="myFourthTableId" data="${persons}">
         <datatables:column title="Id" property="id" sortable="false" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" sortDirection="asc" />
         <datatables:column title="Mail" property="mail" sortDirection="desc" />
      </datatables:table>
   
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/sorting.jsp" doc="basic.sorting.html" />