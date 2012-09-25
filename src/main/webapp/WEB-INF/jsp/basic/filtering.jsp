<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables4j"%>

<div class="row">
   <div class="span12">
      <h3>Table filtering</h3>
      <p>
         By default, filtering is enabled but you can disable it using the <tt>filter</tt> table attribute.
      </p>
      <p>
         The search top right box will disappear.
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" filter="false">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span12 bs-docs-example">
      <p>
         Take a look at the JSP : <tt>WEB-INF/jsp/basic/filtering.jsp</tt>
      </p>
      <p>
<pre class="prettyprint">
&lt;datatables:table id="toto" data="&#36;&#123;persons&#125;" filter="false"&gt;
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