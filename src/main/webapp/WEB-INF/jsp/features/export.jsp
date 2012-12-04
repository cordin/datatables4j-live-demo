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
      <p>
         In this example, two ways of content customization have been added :
         <ul>
            <li><tt>includeHeader</tt> has been set to false, see it in action by clicking the export button</li>
         <li>In order to avoid HTML code to be displayed in the CSV, two <tt>column</tt> tags have been set for the Mail column. One with the <tt>display="HTML"</tt>,
            the other with <tt>display="CSV"</tt></li>
      </ul>
      </p>
   </div>
   <div class="span10"> 

      <datatables:table id="myFourthTableId" data="${persons}" row="person" export="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" display="HTML">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Mail" property="mail" display="CSV" />
         <datatables:export type="CSV" includeHeader="false" fileName="my-export-name" cssClass="btn" label="CSV without header row" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span10">
      <h4>Example 5 : customizing export content</h4>
   </div>
   <div class="span10"> 

      <datatables:table id="myFifthTableId" data="${persons}" row="person" export="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" display="HTML">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Mail" property="mail" display="CSV,XLS" />
         <datatables:export type="XLS" includeHeader="true" fileName="my-export-name" cssClass="btn" label="XLS" />
      </datatables:table>
      
   </div>
</div>