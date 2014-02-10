<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
    
	<div class="container">
	    
	    <jsp:include page="../fragments/bodyHeader.jsp"/>
	
		<div class="readers">
		
		    <h2>Find Readers</h2>
			
			<form:form modelAttribute="owner" action="${fn:escapeXml(formUrl)}" 
													method="get" class="form-horizontal" role="form">
			  <div class="form-group">
			    <label for="inputLastName" class="col-sm-2 control-label">Last Name</label>
			    <div class="col-sm-4">
			      <input type="password" class="form-control" id="inputLastName" placeholder="Last Name">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-success">Find Readers</button>
			    </div>
			  </div>
			</form:form>
			
			<br/>
			
			<div class="bs-callout bs-callout-warning">
			    <h4>* Click the link below to register a Reader</h4>
	    		<a href='<spring:url value="/readers/new" htmlEscape="true"/>'>Add Reader</a>
			 </div>
		    
		</div>
		
		<jsp:include page="../fragments/footer.jsp"/>
	
	</div>

</body>

</html>