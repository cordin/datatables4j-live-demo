<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span10">
      <h3>Export</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span10">
      <h4>Example 1 : default configuration</h4>
   </div>
   <div class="span10">
      
      <datatables:table id="myTableId" data="${persons}" export="true">
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
   <div class="span10">
      <h4>Example 2 : customizing export links</h4>
   </div>
   <div class="span10">
      
      <datatables:table id="mySecondTableId" data="${persons}" export="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />         
         <datatables:export type="CSV" cssClass="btn btn-success" />
         <datatables:export type="XML" cssClass="btn btn-info" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span10">
      <h4>Example 3 : repeating export links</h4>
   </div>
   <div class="span10">
      
      <datatables:table id="myThirdTableId" data="${persons}" export="true" exportLinks="TOP_RIGHT,BOTTOM_RIGHT">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />         
         <datatables:export type="CSV" cssClass="btn btn-info" />
         <datatables:export type="XML" cssClass="btn btn-info" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span10">
      <h4>Example 4 : customizing export content</h4>
   </div>
   <div class="span10"> 

      <datatables:table id="myFourthTableId" data="${persons}" export="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />         
         <datatables:export type="CSV" includeHeader="false" fileName="my-export-name" cssClass="btn" label="CSV without header" />
         <datatables:export type="XML" fileName="my-other-export-name" cssClass="btn" />
      </datatables:table>
      
   </div>
</div>