<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span9">
      <h3>Customizing export content</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span9">
      <h4>Example 1 : no header (all formats)</h4>
      <p>
         In this example, two ways of content customization have been added :
         <ul>
            <li><tt>includeHeader</tt> has been set to false, see it in action by clicking the export button</li>
         <li>In order to avoid HTML code to be displayed in the CSV, two <tt>column</tt> tags have been set for the Mail column. One with the <tt>display="HTML"</tt>,
            the other with <tt>display="CSV"</tt></li>
      </ul>
      </p>
   </div>
   <div class="span9"> 

      <datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:export type="CSV" includeHeader="false" fileName="my-export-name" cssClass="btn" label="CSV without header row" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span9">
      <h4>Example 2 : column auto-sizing (only XLS/XLSX)</h4>
   </div>
   <div class="span9"> 

      <datatables:table id="mySecondTableId" data="${persons}" row="person" export="xls">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:export type="XLS" autoSize="true" fileName="my-export-name" cssClass="btn" label="XLS" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span9">
      <h4>Example 3 : hide one or more columns in the export content</h4>
      <p>
         In the following example, the "Street" column is not exported.
      </p>
   </div>
   <div class="span9"> 

      <datatables:table id="myThirdTableId" data="${persons}" row="person" export="xls">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" display="HTML" />
         <datatables:column title="Mail" display="HTML">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Mail" property="mail" display="CSV,XLS" />
         <datatables:export type="XLS" includeHeader="true" fileName="my-export-name" cssClass="btn" label="XLS" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span9">
      <h4>Example 4 : change any column's content for the export</h4>
      <p>
         In the following example, we don't want HTML code to be displayed in the exported "Mail" column.
      </p>
   </div>
   <div class="span9"> 

      <datatables:table id="myFourthTableId" data="${persons}" row="person" export="pdf">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" display="HTML">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Mail" property="mail" display="CSV,XLS,PDF" />
         <datatables:export type="XLS" includeHeader="true" fileName="my-export-name" cssClass="btn" />
         <datatables:export type="PDF" includeHeader="true" fileName="my-export-name" cssClass="btn" />
      </datatables:table>
      
   </div>
</div>