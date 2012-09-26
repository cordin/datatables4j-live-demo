<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/" var="home" />
<c:url value="/basic" var="basic" />
<c:url value="/advanced" var="advanced" />
<c:url value="/datasources" var="datasources" />
<c:url value="/plugins" var="plugins" />
<c:url value="/features" var="features" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>

<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/css/jquery.dataTables.css" />" rel="stylesheet">
<link href="<c:url value="/css/poc.css" />" rel="stylesheet">
<link href="<c:url value="/css/prettify.css" />" rel="stylesheet" />

<script src="<c:url value="/js/jquery-1.7.2.min.js" />"></script>
<script src="<c:url value="/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/js/jquery.dataTables.js" />"></script>
<script src="<c:url value="/js/prettify.js" />"></script>

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
            </a> <a class="brand" href="#">DataTables4j</a>
            <div class="nav-collapse collapse">
               <ul class="nav">
                  <li class="<tiles:getAsString name="tabHome" />"><a href="${home}"><i class="icon-home"></i> Home</a></li>
                  <li class="dropdown <tiles:getAsString name="tabBasic" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-leaf"></i> Basic<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${basic}/default">Default configuration</a></li>
                        <li><a href="${basic}/info">Display table informations</a></li>
                        <li><a href="${basic}/sorting">Table sorting (TODO)</a></li>
                        <li><a href="${basic}/filtering">Table filtering</a></li>
                        <li><a href="${basic}/pagination">Table paginating</a></li>
                        <li><a href="${basic}/lengthchange">Change length (TODO)</a></li>
                        <li><a href="${basic}/autowidth">Auto width (TODO)</a></li>
                        <li><a href="${basic}/dom">DOM data source</a></li>
                        <li><a href="${basic}/ajax">AJAX data source</a></li>
                        <li><a href="${basic}/implicitObject">Using implicit object (TODO)</a></li>
                        <li><a href="${basic}/cdn">Using CDN (TODO)</a></li>
                     </ul>
                  </li>
                  <li class="dropdown <tiles:getAsString name="tabAdvanced" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-fire"></i> Advanced<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${advanced}/rowid">Row id (TODO)</a></li>
                        <li><a href="${advanced}/extrafile">ExtraConf (TODO)</a></li>
                        <li><a href="${advanced}/extraconf">ExtraFile (TODO)</a></li>
                        <li><a href="${advanced}/override">Override default configuration</a></li>
                        <li><a href="${advanced}/multiple">Multiple tables (TODO)</a></li>
                        <li><a href="${advanced}/ninja">Ninja table (TODO)</a></li>
                     </ul>
                  </li>
                  <li class="dropdown <tiles:getAsString name="tabPlugins" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-plus"></i> Plugins<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${plugins}/home">Home</a></li>
                        <li><a href="${plugins}/fixedheader">FixedHeader</a></li>
                        <li><a href="${plugins}/scroller">Scroller</a></li>
                        <li><a href="${plugins}/colreorder">ColReorder</a></li>
                        <li><a href="${plugins}/tabletools">TableTools (TODO)</a></li>
                        <li><a href="${plugins}/combo">Plugins combo (TODO)</a></li>
                        <li><a href="${plugins}/addyourplugin">Add your plugin (TODO)</a></li>
                     </ul>
                  </li>
                  <li class="dropdown <tiles:getAsString name="tabFeatures" />">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-list"></i> Features<b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${features}/home">Home (TODO)</a></li>
                        <li><a href="${features}/export">Export (TODO)</a></li>
                        <li><a href="${features}/compressor">Compressor (TODO)</a></li>
                        <li><a href="${features}/aggregator">Aggregator (TODO)</a></li>
                     </ul>
                  </li>
               </ul>
               <ul class="nav pull-right">
                  <li><a href="http://datatables4j.github.com/datatables4j/"><i class="icon-globe"></i> Reference</a></li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i> Help <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="https://github.com/datatables4j/datatables4j-core/issues">Issues / Enhancements</a></li>
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

   <script>
   		$(document).ready(function(){
   			prettyPrint();
   		});
   </script>
</body>
</html>