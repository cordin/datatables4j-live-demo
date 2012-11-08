<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Table filtering</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">
      <h4>Example 1 : global filtering activation/deactivation</h4>
   </div>
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

<br />

<div class="row">
   <div class="span12">
      <h4>Example 2 : specific column filtering using input fields</h4>
   </div>
   <div class="span12">
   
      <datatables:table id="mySecondTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" filterable="true" filterCssClass="input-small" />
         <datatables:column title="LastName" property="lastName" filterable="true" filterPlaceholder="Last name" filterCssClass="input-small" />
         <datatables:column title="Street" property="address.street1"  filterable="true" filterPlaceholder="Street search" filterCssClass="input-small" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span12">
      <h4>Example 3 : specific column filtering using input box</h4>
   </div>
   <div class="span12">
   
      <datatables:table id="myThirdTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" filterable="true" filterType="SELECT" />
         <datatables:column title="LastName" property="lastName" filterable="true" filterType="SELECT" filterPlaceholder="Last name" />
         <datatables:column title="Street" property="address.street1"  filterable="true" filterType="SELECT" filterPlaceholder="Street search" filterCssClass="input-small" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span12">
      <h4>Example 4 : specific column filtering using both input fields and select box</h4>
   </div>
   <div class="span12">
   
      <datatables:table id="myFourthTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" filterable="true" filterCssClass="input-small" />
         <datatables:column title="LastName" property="lastName" filterable="true" filterType="SELECT" filterPlaceholder="Last name" />
         <datatables:column title="Street" property="address.street1"  filterable="true" filterType="SELECT" filterPlaceholder="Street search" />
         <datatables:column title="Mail" property="mail" filterable="true" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/filtering.jsp" doc="basic.filtering.html" />