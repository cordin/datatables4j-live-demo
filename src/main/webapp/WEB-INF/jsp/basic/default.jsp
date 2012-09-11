<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables-taglib"%>

<%--<script src="<c:url value="/" />TestJavascript"></script> --%>
        
<div class="row">
   <div class="span12">
      <h3>Default configuration</h3>
      <p>
         The example below shows what happens with the minimal configuration. You just need to have a Java Collection in the <strong>request</strong>
         scope.
      </p>
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table htmlTableId="myTable" dataObjectId="row" data="${persons}">
         <datatables:column title="#" property="id" />
         <datatables:column title="Name" property="lastName" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="City">
            <c:out value="${row.address.town.label}" />
         </datatables:column>
         <datatables:column title="Street">
            <c:out value="${row.address.street1}"></c:out>
         </datatables:column>
      </datatables:table>
      
      <table id="maBite" class="table table-striped table-bordered">
         <thead>
            <tr>
               <th>Id</th>
               <th>Prenom</th>
               <th>Nom</th>
            </tr>
         </thead>
      </table>
   </div>
</div>

<script src="<jsp:include page="/TestJavascript" flush="true"><jsp:param name="username" value="Smith" /><jsp:param name="userempno" value="9876" /></jsp:include>"></script>
<script type="text/javascript">
   
   /*
   $.ajax({  
   	url: '<c:url value="/" />/persons', 
   	dataType: 'json', 
   	type: "GET", 
   	success: function(persons){
   		alert("persons = " + persons);
   		console.log(persons);
   	} 
   }); 
   */
   
   
   $('#maBite').dataTable( {
       "bProcessing": true,
       "sAjaxSource": '<c:url value="/" />/persons'
       /*
       "aoColumns": [
                     { "mData": "id" },
                     { "mData": "firstName" },
                     { "mData": "lastName" }
                   ]*/
   } );
   
   test();
</script>

<br />

<div class="row">
   <div class="span12">
      <div class="bs-docs-example">
         <small>
            <h5>JSP</h5>
            <p>src/main/webapp/WEB-INF/jsp/basic/default.jsp</p>
            <h5>JS</h5>
            <ul>
               <li>src/main/webapp/js/jquery-1.7.2.min.js</li>
               <li>src/main/webapp/js/bootstrap.min.js</li>
               <li>src/main/webapp/js/jquery.dataTables.min.js</li>
            </ul>
            <h5>CSS</h5>
            <ul>
               <li>src/main/webapp/css/bootstrap.min.js</li>
               <li>src/main/webapp/js/jquery.dataTables.min.js</li>
            </ul>
         </small>
      </div>
   </div>
</div>
