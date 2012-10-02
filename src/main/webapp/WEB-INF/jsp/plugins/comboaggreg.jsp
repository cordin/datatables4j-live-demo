<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span10">
      <h3>Plugins combo using aggregation</h3>
      <hr />
      <p>
         Aggregation become very relevant when you use several plugins in the same table.
      </p>
   </div>
   <div class="span10">
      <h4>Example</h4>
      <p>
         <strong>ColReorder</strong> and <strong>Scroller</strong> have been activated in the following table. Aggregation and compression too. Take a look at the generated web resources to see what changed.
      </p>
      <p>
         
         <datatables:table id="myTableId" data="${persons}" scroller="true" colReorder="true">
            <datatables:column title="Id" property="id" />
            <datatables:column title="FirstName" property="firstName" />
            <datatables:column title="LastName" property="lastName" />
            <datatables:column title="Street" property="address.street1" />
            <datatables:column title="Mail" property="mail" />
            <datatables:prop name="datatables4j.aggregator.enable" value="true"/>
            <datatables:prop name="datatables4j.compressor.enable" value="true"/>
         </datatables:table>
         
      </p>
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="plugins/comboaggreg.jsp" doc="plugins.comboaggreg.html" />