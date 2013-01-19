<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Table paging</h3>
      <p>
         By default, pagination is enabled but you can disable it using the
         <code>paginate</code>
         table attribute.
      </p>
      <hr />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" paginate="false">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
         <datatables:table id="myTableId" data="${persons}" paginate="false">
            <datatables:column title="Id" property="id" />
            <datatables:column title="FirstName" property="firstName" />
            <datatables:column title="LastName" property="lastName" />
            <datatables:column title="Street" property="address.street1" />
            <datatables:column title="Mail" property="mail" />
         </datatables:table>
      </tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code></tab:code>
   </tab:thymeleaf>
</tab:tab>