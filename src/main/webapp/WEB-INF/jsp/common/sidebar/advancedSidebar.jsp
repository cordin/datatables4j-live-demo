<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/advanced" var="advanced" />

<div id="sidebar bs-docs-sidebar" >
   <ul class="nav nav-tabs nav-stacked bs-docs-sidenav affix">
      <li><a href="${advanced}/rowid">Row id</a></li>
      <li><a href="${advanced}/i18n">Internationalisation</a></li>
      <li><a href="${advanced}/extrafile">Using extra file</a></li>
      <li><a href="${advanced}/extraconf">Using extra conf</a></li>
      <li><a href="${advanced}/override">Override default configuration</a></li>
      <li><a href="${advanced}/multiple">Multiple tables</a></li>
      <li><a href="${advanced}/ajax">Ajax source</a></li>
   </ul>
</div>