<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Table length changing</h3>
      <p>
         You can enable or disable the capability to change the number of result per page using the
         <code>lengthChange</code>
         table attribute.
      </p>
      <br />
   </div>
</div>

<tab:tab source="basic/lengthchange.jsp" start="18" end="24">
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" lengthChange="false">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
</tab:tab>
