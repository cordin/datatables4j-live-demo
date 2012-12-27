<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/basic" var="basic" />

<div id="sidebar bs-docs-sidebar" >
   <ul class="nav nav-tabs nav-stacked bs-docs-sidenav affix">
      <li><a href="${basic}/default">Default configuration</a></li>
      <li><a href="${basic}/info">Display table informations</a></li>
      <li><a href="${basic}/sorting">Table sorting</a></li>
      <li><a href="${basic}/filtering">Table filtering</a></li>
      <li><a href="${basic}/paging">Table paging</a></li>
      <li><a href="${basic}/changingpagination">Chaging pagination style</a></li>
      <li><a href="${basic}/lengthchange">Table length changing</a></li>
      <li><a href="${basic}/autowidth">Table width</a></li>
      <li><a href="${basic}/implicitObject">Using implicit object</a></li>
      <li><a href="${basic}/cdn">Using CDN</a></li>
   </ul>
</div>