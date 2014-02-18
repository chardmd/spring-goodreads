<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Spring GoodReads</title>
	
	<!-- Core Media -->
	 
	<spring:url value="/resources/css/bootstrap.min.css" var="lib_bootstrapCSS"/>
	<link rel="stylesheet" href="${lib_bootstrapCSS}" />
	
	 	 <spring:url value="/resources/css/spring-goodreads.css" var="css_goodreads"/>
	<link rel="stylesheet" href="${css_goodreads}" />
	
	<spring:url value="/resources/css/datatables.css" var="css_datatables"/>
	<link rel="stylesheet" href="${css_datatables}" />
	
	<spring:url value="/resources/css/tableTools.css" var="css_tableTools"/>
	<link rel="stylesheet" href="${css_tableTools}" />
	 
	<spring:url value="/resources/js/jquery-1.11.0.min.js" var="lib_jQuery"/>
	<script src="${lib_jQuery}"></script>
	
	<spring:url value="/resources/js/bootstrap.min.js" var="lib_bootstrapJS"/>
	<script src="${lib_bootstrapJS}"></script>
	
	<spring:url value="/resources/js/jquery.dataTables.js" var="lib_datatablesJS"/>
	<script type="text/javascript" src="${lib_datatablesJS}"></script>
	
	<spring:url value="/resources/js/datatables.js" var="js_datatables"/>
	<script src="${js_datatables}"></script>
	
	<spring:url value="/resources/js/welcome.js" var="js_welcome"/>
	<script src="${js_welcome}"></script>
	
	<spring:url value="/resources/js/tableTools/tableTools.min.js" var="js_tableTools"/>
	<script src="${js_tableTools}"></script>
	 
	 
</head>


