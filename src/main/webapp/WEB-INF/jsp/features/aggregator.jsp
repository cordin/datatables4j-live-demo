<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row">
   <div class="span10">
      <h3>Aggregation</h3>
      <hr />
   </div>
</div>

<div class="row">
   <div class="span10">
      <h4>Introduction</h4>
      <p>
         Depending on the plugins you use (or not), <strong>DataTables4j</strong> can generate several web resources and bring about several more or less big HTTP GET requests.
      </p>
      <p>
         However, you can choose to enable <i>web resources aggregation</i> (disabled by default) setting the property <code>datatables4j.aggregator.enable</code> to <tt>true</tt>.
      </p>
   </div>
</div>

<div class="row">
   <div class="span10">
      <h4>Usage</h4>
      <p>
         There are two ways :
         <ul>
            <li>
               Set the <code>datatables4j.aggregator.enable</code> property to <tt>true</tt> in your <strong>datatables4j.properties</strong> file. Aggregation will be enabled for the entire application.
            </li>
            <li>
               Add the following <code>prop</code> tag under a <code>table</code> tag :
            
            </li>
         </ul>
      </p>
      <p>
        
      </p>
   </div>
</div>

<div class="row">
   <div class="span10">
      <h4>Configuration</h4>
      <p>
         Several aggregation mode are available.
         <ul>
            <li>
               <code>ALL</code> : all Javascript and CSS resources will be aggregated, resulting in the following HTTP GET requests :
               <ul>
                  <li>
                     <tt>datatables4j-aggregated-XXXXX.js</tt> (per table) : containing all needed Javascript (plugins source, initialisation code)
                  </li>
                  <li>
                     (optional) <tt>datatables4j-aggregated-XXXXX.css</tt> (per table) : containing all needed stylesheets (plugins sources) 
                  </li>
                  where XXXXX is a random set of numeric characters
               </ul>
            </li>
            <li>
               <code>PLUGINS_JS</code> : only JS resources for plugins will be aggregated, resulting in the following HTTP GET requests :
               <ul>
                  <li>
                     <tt>datatables4j-XXXXX.js</tt> :
                  </li>
                  <li>
                     <tt>datatables4j-aggregated-plugins-XXXXX.js</tt> :
                  </li>
                  <li>
                     (optional) <tt>datatables4j-PLUGIN_NAME-.css</tt> :
                  </li>
               </ul> 
            </li>
            <li>
               <code>PLUGINS_CSS</code> : only CSS resources for plugins will be aggregated, resulting in the following HTTP GET requests :
               <ul>
                  <li>
                     <tt>datatables4j-XXXXX.js</tt> :
                  </li>
                  <li>
                     <tt>datatables4j-aggregated-plugins-XXXXX.js</tt> :
                  </li>
                  <li>
                     (optional) <tt>datatables4j-PLUGIN_NAME-.css</tt> :
                  </li>
               </ul> 
            </li>
         </ul>
      </p>
      <p>
        
      </p>
   </div>
</div>