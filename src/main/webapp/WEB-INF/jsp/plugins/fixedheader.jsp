<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>FixedHeader</h3>
      <p>
         <a href="http://www.datatables.net/extras/fixedheader/" class="btn btn-success" style="float: right;">See
            the plugin home</a> This plugin allows you to fixed the table header by scrolling.
      </p>
      <p>
         You just need to set the
         <code>fixedheader</code>
         table attribute to
         <tt>true</tt>
         to activate the plugin.
      </p>
      <p>Then, try to scroll down !</p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" fixedHeader="true" offsetTop="40">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}" fixedHeader="true" offsetTop="40">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="Street" property="address.street1" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTable" dt:table="true">
   <thead dt:fixedheader="true">
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>Street</th>
         <th>Mail</th>
      </tr>
   </thead>
   <tbody>
      <tr th:each="person : ${persons}">
         <td th:text="${person.id}">1</td>
         <td th:text="${person.firstName}">John</td>
         <td th:text="${person.lastName}">Doe</td>
         <td th:text="${person.address.street1}">Nobody knows !</td>
         <td><a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a></td>
      </tr>
   </tbody>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>

<div style="height: 800px;">&nbsp;</div>