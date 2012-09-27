<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
   <div class="span10">
      <h3>Plugins</h3>
      <hr />
      <h4>Introduction</h4>
      <p>
         <a href="http://www.datatables.net">DataTables</a> provides lots of plugins. Some are natives (developed by <a href="http://www.sprymedia.co.uk/">SpryMedia</a>, creator of <a href="http://www.datatables.net">Datatables</a>), other are third-party, but whatever the origin it always adds an amazing user experience.
      </p>
      <h4>How it works</h4>
      <p>
         In <strong>DataTables4j</strong>, native plugins are considered as "Internal plugin". That is to say all plugin sources (Javascript and/or CSS) are embedded in the framework.
         In this way, <strong>DataTables4j</strong> is able to compress or even aggregate multiple files, depending on your configuration choice and of course, if multiple files are needed to use a plugin.
      </p>
      <p>
         For now, DataTables embeds a few native plugins, more will be added over the time.
      </p>
      <p>
         Some extension points are planned, in order to allow <strong>DataTables4j</strong> to scan external plugins.
      </p>
   </div>
   <div class="span10">
   </div>
   <div class="span10">
   </div>
</div>