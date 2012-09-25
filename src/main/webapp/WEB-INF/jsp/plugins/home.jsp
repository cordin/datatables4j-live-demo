<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/plugins" var="plugins" />

<div class="row">
   <div class="span2">
      <div class="well sidebar-nav">
         <ul class="nav nav-list">
            <li class="nav-header">Plugins</li>
            <li class="active"><a href="#">Home</a></li>
            <li><a href="${plugins}/fixedheader">FixedHeader</a></li>
            <li><a href="${plugins}/scroller">Scroller</a></li>
            <li><a href="${plugins}/colreorder">ColReorder</a></li>
            <li><a href="${plugins}/tabletools">TableTools</a></li>
         </ul>
      </div>
   </div>
   <div class="span10">

      <div class="row">
         <div class="span10">
            <h3>Plugins</h3>
            <p>Some DataTables plugins are natively supported by DataTables4j.</p>
         </div>
         <div class="span10">
            Brève description des plugins
         </div>
      </div>
   </div>
</div>