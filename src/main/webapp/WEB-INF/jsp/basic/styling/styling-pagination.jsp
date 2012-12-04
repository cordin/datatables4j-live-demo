<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Styling pagination</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">
      <h4>Example 1 : basic pagination types : two_button and full_numbers</h4>
   </div>
   <div class="span12">

      <datatables:table id="basic1" data="${persons}" paginationType="two_button">
         <datatables:column title="Id" property="id"/>
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
      <br />
      
      <datatables:table id="basic2" data="${persons}" paginationType="full_numbers">
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
      <h4>Example 2 : custom pagination type using Twitter's Bootstrap</h4>
   </div>
   <div class="span12">

      <datatables:table id="bootstrap" cssClass="table table-striped table-bordered table-condensed" data="${persons}" paginationType="bootstrap">
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
      <h4>Example 3 : custom pagination type using Four Button</h4>
   </div>
   <div class="span12">

      <datatables:table id="fourbutton" data="${persons}" paginationType="four_button">
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
      <h4>Example 4 : custom pagination type using scrolling</h4>
   </div>
   <div class="span12">

      <datatables:table id="scrolling" data="${persons}" paginationType="scrolling">
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
      <h4>Example 5 : custom pagination type using a listbox</h4>
   </div>
   <div class="span12">

      <datatables:table id="listbox" data="${persons}" paginationType="listbox">
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
      <h4>Example 6 : custom pagination type using an input box</h4>
   </div>
   <div class="span12">

      <datatables:table id="input" data="${persons}" paginationType="input">
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