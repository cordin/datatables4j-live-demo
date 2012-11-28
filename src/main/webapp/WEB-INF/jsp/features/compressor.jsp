<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span10">
      <h3>Compression</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span10">
      <h4>Example :</h4>
      <p>
         This example uses the YUI Compressor module to compress both Javascript and CSS code.
      </p>
      <p>
         Take a look at the generated files to see compression in action !
      </p>
   </div>
   <div class="span10">
      
      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
         <datatables:prop name="compressor.enable" value="true"/>
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="features/compressor.jsp" doc="features.compression.html" />