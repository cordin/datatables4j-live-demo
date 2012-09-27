<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span10">
      <h3>FixedHeader</h3>
      <p>
         <a href="http://www.datatables.net/extras/fixedheader/" class="btn btn-success" style="float: right;">See the plugin home</a>               
         This plugin allows you to fixed the table header by scrolling.
      </p>
      <hr />
   </div>
   <div class="span10">
      <h4>Usage</h4>
      <p>
         You just need to set the <code>fixedheader</code> table attribute to <tt>true</tt> to activate the plugin.
      </p>
   </div>
   <div class="span10">
      <h4>Example</h4>
      <p>
         
         <datatables:table id="myTableId" data="${persons}" fixedHeader="true" offsetTop="40">
            <datatables:column title="Id" property="id" />
            <datatables:column title="FirstName" property="firstName" />
            <datatables:column title="LastName" property="lastName" />
            <datatables:column title="Street" property="address.street1" />
            <datatables:column title="Mail" property="mail" />
         </datatables:table>
         
      </p>
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="plugins/sorting.jsp" doc="plugins.fixedheader.html" />
  
<div style="height: 800px;">&nbsp;</div>