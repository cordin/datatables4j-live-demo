<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/plugins" var="plugins" />

<div id="sidebar bs-docs-sidebar" >
   <ul class="nav nav-tabs nav-stacked bs-docs-sidenav affix">
      <li><a href="${plugins}/colreorder">ColReorder</a></li>
      <li><a href="${plugins}/scroller">Scroller</a></li>
      <li><a href="${plugins}/fixedheader">FixedHeader</a></li>
      <li><a href="${plugins}/combo">Combo !</a></li>
      <li><a href="${plugins}/comboaggreg">Using aggregation</a></li>
      <li><a href="${plugins}/comboaggregcompress">Using aggregation and compression</a></li>
   </ul>
</div>