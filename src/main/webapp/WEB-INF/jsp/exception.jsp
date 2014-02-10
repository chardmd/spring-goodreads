<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html lang="en">

	<jsp:include page="fragments/headTag.jsp"/> 

<body>

<div class="container">

	<jsp:include page="fragments/bodyHeader.jsp"/>
	
	<div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    Oops!</h1>
                <h2>
                    Check your logs</h2>
                <div class="error-details">
                    <p>${exception.message}</p>
                </div>
                <div class="error-actions">
                    <a href="<spring:url value="/" htmlEscape="true" />" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
                        Take Me Home </a><a href="http://spring.io/blog/2013/11/01/exception-handling-in-spring-mvc" target="_blank" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> Contact Support </a>
                </div>
            </div>
        </div>
    </div>
	
	<jsp:include page="fragments/footer.jsp" />

</div>
		 
</body>

</html>
