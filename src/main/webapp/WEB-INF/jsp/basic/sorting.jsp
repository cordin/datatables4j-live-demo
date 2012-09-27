<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Table sorting</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">
      <h4>Example 1</h4>
      <p>
         By default, sorting is enabled but you can disable it setting the <code>sort</code> table attribute to <tt>false</tt>.
      </p>
   </div>
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" sort="false">
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

<br />

<div class="row">   
   <div class="span12">
      <h4>Example 2</h4>
      <p>
         Moreover, you can use the <code>sortable</code> column attribute to enable sorting on the corresponding column. 
      </p>
   </div>
   <div class="span12">
   
      <datatables:table id="myOtherTableId" data="${persons}">
         <datatables:column title="Id" property="id" sortable="false"/>
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" sortable="false"/>
      </datatables:table>
   
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/sorting.jsp" doc="basic.sorting.html" />