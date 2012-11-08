<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<tiles:insertTemplate template="/WEB-INF/jsp/common/mainLayout.jsp">
   <tiles:putAttribute name="tabHome" value="active" />
   <tiles:putAttribute name="tabBasic" value="" />
   <tiles:putAttribute name="tabAdvanced" value="" />
   <tiles:putAttribute name="tabDatasource" value="" />
   <tiles:putAttribute name="tabPlugins" value="" />
   <tiles:putAttribute name="tabFeatures" value="" />
   <tiles:putAttribute name="title" value="DataTables4j demo app" />
   <tiles:putAttribute name="content" value="/WEB-INF/jsp/overview.jsp" />
</tiles:insertTemplate>
