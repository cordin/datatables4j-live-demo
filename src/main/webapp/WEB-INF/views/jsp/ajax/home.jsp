<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3><i class="icon-refresh"></i> AJAX examples</h3>
      <hr />
   </div>
</div>
<div class="row-fluid">
   <div class="span12">
      <p>There are times when reading data from the DOM is simply too slow or unwieldy, particularly when dealing
         with thousands or millions of data rows.
      </p>
      <p>To address this, <strong>Datatables</strong> provides a method to let all the "heavy lifting" be done by a database engine on
         the server-side (which is optimised for exactly this kind of thing).</p>
      <p>
         When using server-side processing, DataTables will make an XHR request to the server for each draw of the
         information on the page (i.e. when paging, sorting, filtering etc). DataTables will send <a
            href="http://datatables.net/usage/server-side">a number of variables</a> to the server to allow it to
         perform the required processing, and then return the data in the format required by DataTables.
      </p>
      <p>
         That's where <strong>Datatables4j</strong> can bring you some help.
      </p>
      <p>Indeed, it provides some utility classes helping you to integrate as easily as possible the server-side
         processing in your Java/JEE-based web application.</p>
         
      <br />
      <h4></h4>
      <p>Please use the opposite menu to browse the examples.</p>
   </div>
</div>