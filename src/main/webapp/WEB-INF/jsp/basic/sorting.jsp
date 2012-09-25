<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables4j"%>

<div class="row">
   <div class="span12">
      <h3>Table sorting</h3>
      <p>
         By default, sorting is enabled but you can disable it setting the <tt>sort</tt> table attribute to false.
      </p>
      <hr />
   </div>
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" sort="false">
         <datatables:column title="Id" property="id"/>
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
         Take a look at the JSP : <tt>WEB-INF/jsp/basic/sorting.jsp</tt>
      </p>
      <p> 
<pre class="prettyprint">
&lt;datatables:table id="toto" data="&#36;&#123;persons&#125;" sort="false"&gt;
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

<br />

<div class="row">
   <div class="span12">
      <p>
         Moreover, you can use the <pp>sortable</pp> column attribute to enable sorting on the corresponding column. 
      </p>
   </div>
   <div class="span12">

      <datatables:table id="myOtherTableId" data="${persons}">
         <datatables:column title="Id" property="id" sortable="false"/>
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" sortable="false"/>
      </datatables:table>
      
   </div>
</div>

<br />

<div class="row">
   <div class="span12 bs-docs-example">
      <p>
         See <a href="https://github.com/datatables4j/datatables4j-examples/blob/master/src/main/webapp/WEB-INF/jsp/basic/sorting.jsp">source</a>
      </p>
      <p> 
<pre class="prettyprint">
&lt;datatables:table id="toto" data="&#36;&#123;persons&#125;"&gt;
   &lt;datatables:column title="Id" property="id" sortable="false"/&gt;
   &lt;datatables:column title="FirstName" property="firstName" /&gt;
   &lt;datatables:column title="LastName" property="lastName" /&gt;
   &lt;datatables:column title="Street" property="address.street1" /&gt;
   &lt;datatables:column title="Mail" property="mail" sortable="false"/&gt;
&lt;/datatables:table&gt;
</pre>
      </p>  
   </div>
</div>