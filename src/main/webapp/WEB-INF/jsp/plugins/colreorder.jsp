<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/datatables4j"%>

<c:url value="/plugins" var="plugins" />

<div class="row">
   <div class="span2">
      <div class="well sidebar-nav">
         <ul class="nav nav-list">
            <li class="nav-header">Plugins</li>
            <li><a href="${plugins}/home">Home</a></li>
            <li><a href="${plugins}/fixedheader">FixedHeader</a></li>
            <li><a href="${plugins}/scroller">Scroller</a></li>
            <li class="active"><a href="${plugins}/colreorder">ColReorder</a></li>
            <li><a href="${plugins}/tabletools">TableTools</a></li>
         </ul>
      </div>
   </div>
   <div class="span10">

      <div class="row">
         <div class="span10">
            <h3>ColReorder</h3>
            <p>Bla bla</p>
            <p>
               http://www.datatables.net/extras/colreorder/
            </p>
         </div>
         <div class="span10">
            <h4>Usage</h4>
            <p>
               You just need to set the <tt>colreorder</tt> table attribute to <tt>true</tt> to activate the ColReorder plugin.
            </p>
            <p>
               By default, the height is 300px but you can configure it with the <tt>scrollY</tt> table attribute.
            </p>
         </div>
         <div class="span10">
            <h4>Example</h4>
            <p>
               <datatables:table id="myTableId" data="${persons}" colReorder="true">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="Street" property="address.street1" />
                  <datatables:column title="Mail" property="mail" />
                  <datatables:prop name="datatables4j.compressor.enable" value="true"/>
               </datatables:table>
            </p>
         </div>
         <div class="span10 bs-docs-example">
            <p>
               Take a look at the JSP : <tt>WEB-INF/jsp/plugins/colreorder.jsp</tt>
            </p>
            <p>
<pre class="prettyprint">
&lt;datatables:table id="toto" data="&#36;&#123;persons&#125;" colreorder="true"&gt;
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
   </div>
</div>