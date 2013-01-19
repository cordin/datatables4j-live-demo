<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Using CDN</h3>
      <p>You can decide to load the required Datatables web resources (JS, CSS, images) using the Microsoft's CDN.</p>
      <p>
         <code>link</code>
         and
         <code>script</code>
         HTML tags will be generated and will wrap the table.
      </p>
      <p>Take a look at the generated HTML code !</p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" cdn="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
         <datatables:table id="myTableId" data="${persons}" cdn="true">
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
