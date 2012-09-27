<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span10">
      <h3>Plugins combo</h3>
      <hr />
      <p>
         You can combine several plugins in the same table. Just add the different plugin tag attributes.
      </p>
      <p>
         You can choose different strategies for the web resource generation.
         <ul>
            <li>TODO</li>
            <li>TODO</li>
            <li>TODO</li>
         </ul>
      </p>
      
      <div class=alert>
         <strong>Warning!</strong> Some limitations due to DataTables plugin's compatibility may appear. For instance, Scroller and FixedHeader plugins are still not compatibles.
      </div>
   </div>
   <div class="span10">
      <h4>Example</h4>
      <p>
         
         <datatables:table id="myTableId" data="${persons}" scroller="true" colReorder="true">
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