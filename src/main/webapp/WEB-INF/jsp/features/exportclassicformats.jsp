<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span9">
      <h3>Export</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span9">
      <h4>Example 1 : CSV</h4>
   </div>
   <div class="span9"> 

      <datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" display="HTML">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Mail" property="mail" display="CSV,XLS,PDF" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span9">
      <h4>Example 2 : PDF</h4>
   </div>
   <div class="span9"> 

      <datatables:table id="mySecondTableId" data="${persons}" row="person" export="pdf">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" display="HTML">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Mail" property="mail" display="CSV,XLS,PDF" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span9">
      <h4>Example 3 : multiple formats</h4>
   </div>
   <div class="span9"> 

      <datatables:table id="myThirdTableId" data="${persons}" row="person" export="pdf,xls,csv">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" display="HTML">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Mail" property="mail" display="CSV,XLS,PDF,XLSX" />
      </datatables:table>
      
   </div>
</div>