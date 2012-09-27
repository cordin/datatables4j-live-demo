<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Row id</h3>
      <p>Sometimes, it can be useful to add each row an HTML id. Sometimes too, the row id cannot just be an incremented id but a dynamic string builded,
         for instance, from a bean's attribute.</p>
      <p>
         You have at one's disposal 3 attributes : <code>rowIdBase</code>, <code>rowIdPrefix</code> and <code>rowIdSuffix</code>.
      </p>
      <p>
         <ul>
            <li><code>rowIdBase</code> : String <u>evaluated as a property of the current iterated bean</u></li>
            <li><code>rowIdPrefix</code> : String prepended to the <code>rowIdBase</code> attribute</li>
            <li><code>rowIdSufix</code> : String appended to the <code>rowIdBase</code> attribute</li>
         </ul>
      </p>
      <p>
         For instance, given the current iterated <abbr title="Plain Old Java Object">POJO</abbr>, we would like to build row ids as "person_1", "person_2", ...
      </p>
      <hr />
   </div>
</div>

<div class="row">   
   <div class="span12">
      <h4>Example</h4>
      <p>
         Take a look at the generated row id. 
      </p>
   </div>
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" rowIdBase="id" rowIdPrefix="person_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="advanced/rowid.jsp" doc="advanced.rowid.html" />