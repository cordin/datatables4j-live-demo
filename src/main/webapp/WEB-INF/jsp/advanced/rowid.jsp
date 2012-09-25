<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables4j"%>

<div class="row">
   <div class="span12">
      <h3>Row id</h3>
      <p>Sometimes, it can be useful to add each row an HTML id. Sometimes too, the row id cannot just be an incremented id but a dynamic string builded,
         for instance, from a bean's attribute.</p>
      <p>
         You have at one's disposal 3 attributes : <tt>rowIdBase</tt>, <tt>rowIdPrefix</tt> and <tt>rowIdSuffix</tt>.
      </p>
      <p>
         <ul>
            <li><tt>rowIdBase</tt> : String <u>evaluated as a property of the current iterated bean</u></li>
            <li><tt>rowIdPrefix</tt> : String prepended to the <tt>rowIdBase</tt> attribute</li>
            <li><tt>rowIdSufix</tt> : String appended to the <tt>rowIdBase</tt> attribute</li>
         </ul>
      </p>
      <p>
         For instance, given the current iterated <abbr title="Plain Old Java Object">POJO</abbr>, we would like to build row ids as "person_1", "person_2", ...
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" rowIdBase="id" rowIdPrefix="person_">
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
         Take a look at the JSP : <tt>WEB-INF/jsp/basic/default.jsp</tt>
      </p>
      <p>
<pre class="prettyprint">
&lt;datatables:table id="myTableId" data="&#36;&#123;persons&#125;" rowIdBase="id" rowIdPrefix="person_"&gt;
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