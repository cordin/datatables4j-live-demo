<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables4j"%>

<c:url value="/plugins" var="plugins" />

<div class="row">
   <div class="span2">
      <div class="well sidebar-nav">
         <ul class="nav nav-list">
            <li class="nav-header">Plugins</li>
            <li><a href="${plugins}/home">Home</a></li>
            <li class="active"><a href="${plugins}/fixedheader">FixedHeader</a></li>
            <li><a href="${plugins}/scroller">Scroller</a></li>
            <li><a href="${plugins}/colreorder">ColReorder</a></li>
            <li><a href="${plugins}/tabletools">TableTools</a></li>
         </ul>
      </div>
   </div>
   <div class="span10">

      <div class="row">
         <div class="span10">
            <h3>FixedHeader</h3>
            <p>Some DataTables plugins are natively supported by DataTables4j.</p>
            <p>
               http://www.datatables.net/extras/fixedheader/
            </p>
         </div>
         <div class="span10">
            <h4>Usage</h4>
            <p>
               You just need to set the <tt>fixedheader</tt> table attribute to <tt>true</tt> to activate fixed header.
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
         <div class="span10 bs-docs-example">
            <p>
               Take a look at the JSP : <tt>WEB-INF/jsp/plugins/fixedheader.jsp</tt>
            </p>
            <p>
<pre class="prettyprint">
&lt;datatables:table id="toto" data="&#36;&#123;persons&#125;" fixedHeader="true"&gt;
   &lt;datatables:column title="Id" property="id" /&gt;
   &lt;datatables:column title="FirstName" property="firstName" /&gt;
   &lt;datatables:column title="LastName" property="lastName" /&gt;
   &lt;datatables:column title="Street" property="address.street1" /&gt;
   &lt;datatables:column title="Mail" property="mail" /&gt;
&lt;/datatables:table&gt;
</pre>      
            </p>
         </div>
      </div>
      <div style="height: 500px;">&nbsp;</div>
   </div>
</div>