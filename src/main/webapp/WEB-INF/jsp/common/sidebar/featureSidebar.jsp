<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/features" var="featuresUrl" />

<div id="sidebar bs-docs-sidebar" >
   <ul class="nav nav-tabs nav-stacked bs-docs-sidenav affix">
      <li><a href="${featuresUrl}/home">Home</a></li>
      <li><a href="${featuresUrl}/compressor">Compressor</a></li>
      <li><a href="${featuresUrl}/aggregator">Aggregator</a></li>
      <li><a href="${featuresUrl}/exportclassicformats">Export</a></li>
      <li><a href="${featuresUrl}/exportcustomlinks">Customed export links</a></li>
      <li><a href="${featuresUrl}/exportcustomcontent">Customed export content</a></li>
   </ul>
</div>