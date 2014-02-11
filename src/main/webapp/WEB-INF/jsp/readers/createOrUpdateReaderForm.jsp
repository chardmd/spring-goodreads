<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>

	<div class="container">
	
	  <jsp:include page="../fragments/bodyHeader.jsp"/>
	
			<div class="row">
		     <div class="well">
		       <form:form modelAttribute="reader" method="post" class="form-horizontal" id="add-owner-form">
		         <fieldset>
		           <legend>Add Reader</legend>
		           
		           <div class="form-group">
		             <form:label path="firstName" class="col-lg-1 control-label">First Name</form:label>
		             <div class="col-lg-3">
		               <form:input type="text" class="form-control" id="firstName" path="firstName" placeholder="First Name" />
		             </div>
		             <form:errors path="firstName" cssclass="error" element="label" class="error" />
		           </div>
		           
		           <div class="form-group">
		             <form:label path="lastName" class="col-lg-1 control-label">Last Name</form:label>
		             <div class="col-lg-3">
		               <form:input type="text" class="form-control" id="lastName" path="lastName" placeholder="Last Name" />
		             </div>
		             <form:errors path="lastName" cssclass="error" element="label" class="error" />
		           </div>
		           
				    <div class="form-group">
		             <form:label path="address" class="col-lg-1 control-label">Address</form:label>
		             <div class="col-lg-3">
		               <form:textarea class="form-control" rows="3" path="address" id="address" placeholder="Complete Address"></form:textarea>
		            </div>
		            <form:errors path="address" cssclass="error"  element="label" class="error"/>
		           </div>
		           
		           <div class="form-group">
		             <form:label path="city" class="col-lg-1 control-label">City</form:label>
		             <div class="col-lg-3">
		               <form:input type="text" class="form-control" path="city" id="city" placeholder="City" />
		             </div>
		             <form:errors path="city" cssclass="error"  element="label" class="error"/>
		           </div>
		           
		           <div class="form-group">
		             <form:label path="telephone" class="col-lg-1 control-label">Phone</form:label>
		             <div class="col-lg-3">
		               <form:input type="text" class="form-control" path="telephone" id="telephone" placeholder="Phone" />
		             </div>
		             <form:errors path="telephone" cssclass="error" element="label" class="error"/>
		           </div>
		           
		           <div class="form-group">
		             <div class="col-lg-3 col-lg-offset-1">
		               <button type="submit" class="btn btn-primary">Submit</button> 
		             </div>
		           </div>
		           
		         </fieldset>
		       </form:form>
		     </div>
		   </div>
	 
		
	  <jsp:include page="../fragments/footer.jsp"/>
	
	</div>

</body>

</html>
