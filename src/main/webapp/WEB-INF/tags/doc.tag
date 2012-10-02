<%@ tag language="java" pageEncoding="ISO-8859-1" body-content="empty" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="source" %>
<%@ attribute name="doc" %>

<br />
<div class="row">
   <div class="span12">
      <p>
         <a href="https://github.com/datatables4j/datatables4j-examples/blob/master/src/main/webapp/WEB-INF/jsp/${source}" class="btn btn-info" target="_blank">Example source code</a>         
         <a href="http://datatables4j.github.com/docs/${doc}" class="btn" target="_blank">Example doc</a>
      </p>
   </div>
</div>