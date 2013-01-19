<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Plugins combo using aggregation and compression</h3>
      <p>Aggregation become very relevant when you use several plugins in the same table. Compression too :-)</p>
      <p>
         <strong>ColReorder</strong> and <strong>Scroller</strong> have been activated in the following table. Aggregation and compression too. Take a
         look at the generated web resources to see what changed.
      </p>
      <br />
   </div>
</div>

<tab:tab source="plugins/comboaggregcompress.jsp" start="19" end="27">
   <tab:demo>

      <datatables:table id="myTableId" data="${persons}" scroller="true" colReorder="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
         <datatables:prop name="aggregator.enable" value="true" />
         <datatables:prop name="compressor.enable" value="true" />
      </datatables:table>

   </tab:demo>
</tab:tab>