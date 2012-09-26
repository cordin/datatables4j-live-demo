<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/datatables4j" %>

<div class="row">
   <div class="span12">
      <h3>Override defaults configuration</h3>
      <p>
         By default, DataTables4j internally uses a properties file containing all needed configuration. But there are two ways to override it.
      </p>
      <p>
         First, you can add a file called <strong>datatables4j.properties</strong> in your classpath, allowing you to redefine every property you
         need. Your custom global configuration will then be merged with the default one. 
      </p>
      <p>
         Other way, you can locally override properties using the <tt>prop</tt> tag. Just define the property's name and value.
      </p>
      <p>
         For instance, compression is by default disabled. Thanks to the <tt>prop</tt> tag, you can enable it locally, just for a given JSP.
      </p>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
         <datatables:prop name="datatables4j.compressor.enable" value="true"/>
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
&lt;datatables:table id="myTableId" data="&#36;&#123;persons&#125;"&gt;
   &lt;datatables:column title="Id" property="id" /&gt;
   &lt;datatables:column title="FirstName" property="firstName" /&gt;
   &lt;datatables:column title="LastName" property="lastName" /&gt;
   &lt;datatables:column title="Street" property="address.street1" /&gt;
   &lt;datatables:column title="Mail" property="mail" /&gt;
   &lt;datatables:prop name="datatables4j.compressor.enable" value="false"/&gt;
&lt;/datatables:table&gt;
</pre>
      </p>
   </div>
</div>