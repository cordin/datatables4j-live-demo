<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Table filtering</h3>
      <hr />
   </div>
</div>

<div class="tabbable">
   <ul id="myTabs" class="nav nav-pills custom-pills">
      <li class="active"><a href="#example1" data-toggle="tab"><i class="icon-chevron-down"></i> Global
            activation/deactivation</a></li>
      <li><a href="#example2" data-toggle="tab"><i class="icon-chevron-down"></i> Using input</a></li>
      <li><a href="#example3" data-toggle="tab"><i class="icon-chevron-down"></i> Using select boxes</a></li>
      <li><a href="#example4" data-toggle="tab"><i class="icon-chevron-down"></i> Using both !</a></li>
   </ul>
   <hr />
   <div class="tab-content">
      <div class="tab-pane active" id="example1">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myTableId" data="${persons}" filter="false">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="Street" property="address.street1" />
                  <datatables:column title="Mail" property="mail" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
                  <datatables:table id="myTableId" data="${persons}" filter="false">
                     <datatables:column title="Id" property="id" />
                     <datatables:column title="FirstName" property="firstName" />
                     <datatables:column title="LastName" property="lastName" />
                     <datatables:column title="Street" property="address.street1" />
                     <datatables:column title="Mail" property="mail" />
                  </datatables:table>
               </tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
                  <table id="myTableId" dt:table="true" dt:filter="false">
                     <thead>
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
                           <td th:text="${person.mail}">john@doe.com</td>
                        </tr>
                     </tbody>
                  </table>
               </tab:code>
            </tab:thymeleaf>
         </tab:tab>
      </div>
      <div class="tab-pane" id="example2">
         <tab:tab>
            <tab:demo>
               <datatables:table id="mySecondTableId" data="${persons}">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" filterable="true" />
                  <datatables:column title="LastName" property="lastName" filterable="true" />
                  <datatables:column title="Street" property="address.street1" filterable="true" />
                  <datatables:column title="Mail" property="mail" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
                  <datatables:table id="mySecondTableId" data="${persons}">
                     <datatables:column title="Id" property="id" />
                     <datatables:column title="FirstName" property="firstName" filterable="true" />
                     <datatables:column title="LastName" property="lastName" filterable="true" />
                     <datatables:column title="Street" property="address.street1" filterable="true" />
                     <datatables:column title="Mail" property="mail" />
                  </datatables:table>
               </tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
                  <table id="mySecondTableId" dt:table="true">
                     <thead>
                        <tr>
                           <th>Id</th>
                           <th dt:filterable="true">Firstname</th>
                           <th dt:filterable="true">Lastname</th>
                           <th dt:filterable="true">Street</th>
                           <th>Mail</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr th:each="person : ${persons}">
                           <td th:text="${person.id}">1</td>
                           <td th:text="${person.firstName}">John</td>
                           <td th:text="${person.lastName}">Doe</td>
                           <td th:text="${person.address.street1}">Nobody knows !</td>
                           <td th:text="${person.mail}">john@doe.com</td>
                        </tr>
                     </tbody>
                  </table>
               </tab:code>
            </tab:thymeleaf>
         </tab:tab>
      </div>
      <div class="tab-pane" id="example3">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myThirdTableId" data="${persons}">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" filterable="true" filterType="select" />
                  <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
                  <datatables:column title="Street" property="address.street1" filterable="true" filterType="select" />
                  <datatables:column title="Mail" property="mail" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
                  <datatables:table id="myThirdTableId" data="${persons}">
                     <datatables:column title="Id" property="id" />
                     <datatables:column title="FirstName" property="firstName" filterable="true" filterType="select" />
                     <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
                     <datatables:column title="Street" property="address.street1" filterable="true" filterType="select" />
                     <datatables:column title="Mail" property="mail" />
                  </datatables:table>
               </tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
                  <table id="myThirdTableId" dt:table="true">
                     <thead>
                        <tr>
                           <th>Id</th>
                           <th dt:filterable="true" dt:filterType="select">Firstname</th>
                           <th dt:filterable="true" dt:filterType="select">Lastname</th>
                           <th dt:filterable="true" dt:filterType="select">Street</th>
                           <th>Mail</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr th:each="person : ${persons}">
                           <td th:text="${person.id}">1</td>
                           <td th:text="${person.firstName}">John</td>
                           <td th:text="${person.lastName}">Doe</td>
                           <td th:text="${person.address.street1}">Nobody knows !</td>
                           <td th:text="${person.mail}">john@doe.com</td>
                        </tr>
                     </tbody>
                  </table>
               </tab:code>
            </tab:thymeleaf>
         </tab:tab>
      </div>
      <div class="tab-pane" id="example4">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myFourthTableId" data="${persons}">
                  <datatables:column title="Id" property="id" filterType="number" />
                  <datatables:column title="FirstName" property="firstName" filterable="true" />
                  <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
                  <datatables:column title="Street" property="address.street1" filterable="true" filterType="select" />
                  <datatables:column title="Mail" property="mail" filterable="true" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
                  <datatables:table id="myFourthTableId" data="${persons}">
                     <datatables:column title="Id" property="id" filterType="number" />
                     <datatables:column title="FirstName" property="firstName" filterable="true" />
                     <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
                     <datatables:column title="Street" property="address.street1" filterable="true" filterType="select" />
                     <datatables:column title="Mail" property="mail" filterable="true" />
                  </datatables:table>
               </tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
                  <table id="myFourthTableId" dt:table="true">
                     <thead>
                        <tr>
                           <th>Id</th>
                           <th dt:filterable="true">Firstname</th>
                           <th dt:filterable="true" dt:filterType="select">Lastname</th>
                           <th dt:filterable="true" dt:filterType="select">Street</th>
                           <th>Mail</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr th:each="person : ${persons}">
                           <td th:text="${person.id}">1</td>
                           <td th:text="${person.firstName}">John</td>
                           <td th:text="${person.lastName}">Doe</td>
                           <td th:text="${person.address.street1}">Nobody knows !</td>
                           <td th:text="${person.mail}">john@doe.com</td>
                        </tr>
                     </tbody>
                  </table>
               </tab:code>
            </tab:thymeleaf>
         </tab:tab>
      </div>
   </div>
</div>