<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span10">
      <h3>Scroller</h3>
      <p>
         <a href="http://www.datatables.net/extras/scroller/" class="btn btn-success" style="float: right;">See the plugin home</a>
         This plugin allows you to scroll inside the table data.
      </p>
      <hr />
   </div>
   <div class="span10">
      <h4>Usage</h4>
      <p>
         You just need to set the <code>scroller</code> table attribute to <tt>true</tt> to activate the Scroller plugin.
      </p>
      <p>
         By default, the height is 300px but you can configure it with the <code>scrollY</code> table attribute.
      </p>
   </div>
   <div class="span10">
      <h4>Example</h4>
      <p>
         <datatables:table id="myTableId" data="${persons}" scroller="true">
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
<doc:doc source="plugins/scroller.jsp" doc="plugins.scroller.html" />