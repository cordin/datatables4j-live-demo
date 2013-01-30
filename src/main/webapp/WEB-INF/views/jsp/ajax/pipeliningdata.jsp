<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<%@ taglib prefix="datatables" uri="http://github.com/datatables4j"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Pipelining data for paging</h3>
      <h4>Introduction</h4>
      <p>When using server-side processing with DataTables, it can be quite intensive on your server having an Ajax
         call every time the user performs some kind of interaction - you can effectively DDOS your server with your own
         application!</p>
      <p>This example shows how you might over-come this by modifying the request set to the server to retrieve more
         information than is actually required for a single page's display. This means that the user can page multiple
         times (5 times the display size is the default) before a request must be made of the server. Paging is
         typically the most common interaction performed with a DataTable, so this can be most beneficial to your
         server's resource usage. Of course the pipeline must be cleared for interactions other than paging (sorting,
         filtering etc), but that's the trade off that can be made (sending extra information is cheap - while another
         XHR is expensive).</p>
      <p>
   </div>
</div>

<tab:tab>
   <tab:demo>

      <datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true" pipelining="true" pipeSize="6">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </tab:demo>
   <tab:taglib>
      <tab:code>
         <datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true" pipelining="true" pipeSize="6">
            <datatables:column title="Id" property="id" />
            <datatables:column title="FirstName" property="firstName" />
            <datatables:column title="LastName" property="lastName" />
            <datatables:column title="City" property="address.town.name" />
            <datatables:column title="Mail" property="mail" />
         </datatables:table>
      </tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code></tab:code>
   </tab:thymeleaf>
</tab:tab>