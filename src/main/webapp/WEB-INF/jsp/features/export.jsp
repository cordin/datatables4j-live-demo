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
      <h4>Introduction</h4>
      <p>
         Depending on the plugins you use (or not), <strong>DataTables4j</strong> can generate several web resources and bring about several more or less big HTTP GET requests.
      </p>
      <p>
         However, you can choose to enable <i>web resources aggregation</i> (disabled by default) setting the property <code>datatables4j.aggregator.enable</code> to <tt>true</tt>.
      </p>
   </div>
</div>

<div class="row">
   <div class="span12">
      
      <datatables:table id="myTableId" data="${persons}" export="true" exportButtons="BOTTOM_MIDDLE,TOP_RIGHT">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
         <datatables:prop name="compressor.enable" value="false"/>
         <datatables:export id="dt4j-export-csv" type="CSV" fileName="monExport" cssClass="btn" />
         <datatables:export id="dt4j-export-xml" type="XML" fileName="monExport-xml" cssClass="btn" />
      </datatables:table>
      
   </div>
</div>