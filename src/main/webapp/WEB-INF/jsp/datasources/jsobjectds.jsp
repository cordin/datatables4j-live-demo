<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables-taglib"%>

<div class="row">
   <div class="span12">
      <h3>Array of objects as a data source</h3>
      <p>
         The example below shows what happens with the minimal configuration. You just need to have a Java Collection in the <strong>request</strong>
         scope.
      </p>
   </div>
</div>

<div class="row">
   <div class="span12">

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

<br />

<script type="text/javascript">
// 1ere solution : initialiser juste le tag TABLE et ajouter dans aoColumns sTitle
// 2eme solution : initialiser les tags TABLE et THEAD puis mettre juste dans mData dans aoColumns
var data;
$(document).ready(function(){
      
	$('#maBite').dataTable( {
        "aaData": persons,
        "aoColumns": [
                      { "sTitle": "Id js", "mData": "id" },
                      { "sTitle": "Firstname js", "mData": "firstName" },
                      { "sTitle": "Lastname js", "mData": "lastName" }
                    ]
    } );
	
	
      $.ajax({  
         url: '<c:url value="/" />/persons', 
         dataType: 'json', 
         type: "GET", 
         success: function(persons){
            alert("persons = " + persons);
            
            $('#maBite').dataTable( {
                "aaData": persons,
                "aoColumns": [
                              { "sTitle": "Id js", "mData": "id" },
                              { "sTitle": "Firstname js", "mData": "firstName" },
                              { "sTitle": "Lastname js", "mData": "lastName" }
                            ]
            } );
         } 
      }); 
   });
   
   /*
   $('#maBite').dataTable( {
       "bProcessing": true,
       "sAjaxSource": '<c:url value="/" />/persons',
       "aoColumns": [
                     { "mData": "id" },
                     { "mData": "firstName" },
                     { "mData": "lastName" }
                   ]
   } );*/
   
   
</script>