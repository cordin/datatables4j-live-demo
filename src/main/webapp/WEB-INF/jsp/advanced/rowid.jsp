<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Row id</h3>
      <p>
         Sometimes, it can be useful to add an HTML id to each row (
         <code>tr</code>
         tags). Sometimes too, the row id cannot just be an incremented id but a dynamic builded string, for instance,
         from a bean's attribute.
      <p>
         You have at one's disposal 3 attributes :
         <code>rowIdBase</code>
         ,
         <code>rowIdPrefix</code>
         and
         <code>rowIdSuffix</code>
         .
      <p>
      <ul>
         <li><code>rowIdBase</code> : String <strong>evaluated</strong> as a property of the current iterated bean</li>
         <li><code>rowIdPrefix</code> : String prepended to the <tt>rowIdBase</tt> attribute</li>
         <li><code>rowIdSufix</code> : String appended to the <tt>rowIdBase</tt> attribute</li>
      </ul>
      </p>
      <p class="alert alert-warn">
         <strong>Warning !</strong><br /> Currently, the row id feature can only be used with DOM source (not AJAX).
      </p>
      </p>
      <p>Take a look at the generated ids below !</p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>

      <datatables:table id="myTableId" data="${persons}" rowIdBase="id" rowIdPrefix="person_">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </tab:demo>
</tab:tab>