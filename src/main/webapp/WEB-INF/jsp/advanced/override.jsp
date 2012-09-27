<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span12">
      <h3>Override defaults configuration</h3>
      <p>
         By default, DataTables4j internally uses a properties file containing all needed configuration. But there are two ways to override it.
      </p>
      <p>
         First, you can add a file called <strong>datatables4j.properties</strong> in your classpath, allowing you to redefine every property you
         need. Your custom global configuration will then be merged with the default one. 
      </p>
      <p>
         Other way, you can locally override properties using the <code>prop</code> tag. Just define the property's name and value.
      </p>
      <p>
         For instance, compression is by default disabled. Thanks to the <code>prop</code> tag, you can enable it locally, just for a given JSP.
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
         <datatables:prop name="datatables4j.compressor.enable" value="true"/>
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="advanced/override.jsp" doc="advanced.override.html" />