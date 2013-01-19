<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Multiple tables</h3>
      <p>
         <strong>DataTables4j</strong> can handle multiple tables on the same page.
      </p>
      <p>Just take care to give a unique ID to each table !</p>
      <br />
   </div>
</div>

<tab:tab source="advanced/multiple.jsp" start="18" end="32">
   <tab:demo>

      <datatables:table id="myTableId" data="${persons}" row="person" rowIdBase="id" rowIdPrefix="toto_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" sortable="false" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

      <br />
      <br />

      <datatables:table id="myOtherTableId" data="${persons}" row="person" rowIdBase="id" rowIdPrefix="toto_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" sortable="false" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </tab:demo>
</tab:tab>