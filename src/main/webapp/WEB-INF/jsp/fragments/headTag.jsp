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
	 
</head>


