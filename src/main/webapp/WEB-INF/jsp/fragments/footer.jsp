<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<footer class="bs-footer">
     <div class="row">
       <div class="col-lg-12">
         <p>Designed and built with all the motivation in the world by <a href="http://twitter.com/charddimalanta" target="_blank">@charddimalanta</a>.</p>
     </div>
     </div>
</footer>

<spring:url value="/resources/js/jquery-1.11.0.min.js" var="lib_jQuery"/>
<script src="${lib_jQuery}"></script>

<spring:url value="/resources/js/bootstrap.min.js" var="lib_bootstrapJS"/>
<script src="${lib_bootstrapJS}"></script>

<spring:url value="/resources/js/jquery.dataTables.js" var="lib_datatablesJS"/>
<script type="text/javascript" src="${lib_datatablesJS}"></script>

<spring:url value="/resources/js/datatables.js" var="js_datatables"/>
<script src="${js_datatables}"></script>

<spring:url value="/resources/js/bookList.js" var="js_bookList"/>
<script src="${js_bookList}"></script>

<spring:url value="/resources/js/welcome.js" var="js_welcome"/>
<script src="${js_welcome}"></script>