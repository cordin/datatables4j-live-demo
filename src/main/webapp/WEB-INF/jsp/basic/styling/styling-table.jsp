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
      <h4>Example 1 : custom pagination type using Twitter's Bootstrap</h4>
   </div>
   <div class="span12">

      <datatables:table id="myTableId" cssClass="table table-striped table-bordered table-condensed" data="${persons}" paginationType="bootstrap">
         <datatables:column title="Id" property="id"/>
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<div class="row">
   <div class="span12">
      <h4>Example 2 : custom pagination type using Four Button</h4>
   </div>
   <div class="span12">

      <datatables:table id="myTableId" cssClass="table table-striped table-bordered table-condensed" data="${persons}" paginationType="four_button">
         <datatables:column title="Id" property="id"/>
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/sorting.jsp" doc="basic.sorting.html" />