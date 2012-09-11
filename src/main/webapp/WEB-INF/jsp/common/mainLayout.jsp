
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/" var="home" />
<c:url value="/basic/default" var="default" />
<c:url value="/basic/sorting" var="sorting" />
<c:url value="/basic/multiple" var="multiple" />
<c:url value="/basic/pagination" var="pagination" />
<c:url value="/datasource/dom" var="domds" />
<c:url value="/datasource/arrayofarrays" var="jsarrayds" />
<c:url value="/datasource/arrayofobjects" var="jsobjectds" />
<c:url value="/test/test1" var="test1" />
<c:url value="/test/test2" var="test2" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>

<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/css/jquery.dataTables.css" />" rel="stylesheet">
<link href="<c:url value="/css/poc.css" />" rel="stylesheet">

<script src="<c:url value="/js/jquery-1.7.2.min.js" />"></script>
<script src="<c:url value="/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/js/jquery.dataTables.js" />"></script>

<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>

</head>
<body>

   <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
         <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </a> <a class="brand" href="#">DataTables4j examples application</a>
            <div class="nav-collapse collapse">
               <ul class="nav">
                  <li class="<tiles:getAsString name="tabHome" />"><a href="${home}"><i class="icon-home"></i> Home</a></li>
                  <li class="dropdown <tiles:getAsString name="tabBasic" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-leaf"></i> Basic examples<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${default}">Default configuration</a></li>
                        <li><a href="${sorting}">Table sorting</a></li>
                        <li><a href="${multiple}">Multiple tables</a></li>
                        <li><a href="${pagination}">Pagination</a></li>
                     </ul>
                  </li>
                  <li class="dropdown <tiles:getAsString name="tabAdvanced" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-fire"></i> Advanced examples<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="#">Soon ...</a></li>
                     </ul>
                  </li>
                  <li class="dropdown <tiles:getAsString name="tabDatasource" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class=" icon-hdd"></i> Data sources<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${domds}">DOM</a></li>
                        <li><a href="${jsarrayds}">AJAX : array of arrays</a></li>
                        <li><a href="${jsobjectds}">AJAX : array of objects</a></li>
                     </ul>
                  </li>
                  <li class="dropdown <tiles:getAsString name="tabDatasource" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class=" icon-hdd"></i> Tests<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${test1}">Test 1 (DOM)</a></li>
                        <li><a href="${test2}">Test 2 (AJAX)</a></li>
                     </ul>
                  </li>
               </ul>
               <ul class="nav pull-right">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i> Help <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="http://tduchateau.github.com/DataTables-taglib/reference.html">DataTables-taglib reference</a></li>
                        <li><a href="http://datatables.net/forums/discussion/10138/">DataTables forum</a></li>
                     </ul>
                  </li>
               </ul>
            </div>
            <!--/.nav-collapse -->
         </div>
      </div>
   </div>

   <div class="container">

      <tiles:insertAttribute name="content" />

      <hr />
      <footer>
         <p>DataTables4j - v0.0.0-SNAPSHOT</p>
      </footer>

   </div>

</body>
</html>