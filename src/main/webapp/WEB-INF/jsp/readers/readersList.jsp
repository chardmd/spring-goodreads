<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    <h2>Readers</h2>
    
	<table class="table table-striped table-bordered datatable">
	   <thead>
	     <tr>
	       <th>Name</th>
	       <th>Address</th>
	       <th>City</th>
	       <th>Telephone</th>
	     </tr>
	   </thead>
	   <tbody>
	   <c:forEach var="reader" items="${selections}">
		     <tr>
		       <td>${reader.firstName} ${reader.lastName}</td>
		       <td>${reader.address}</td>
		       <td>${reader.city}</td>
		       <td>${reader.telephone}</td>
		     </tr>
		</c:forEach>
	   </tbody>
	 </table>
    
    <jsp:include page="../fragments/footer.jsp"/>
    
     <spring:url value="/resources/js/tableTools/copy_csv_xls_pdf.swf" var="resourceSwf" />
	 <script>
	 	jQuery('.datatable').dataTable({
			"sDom": 'T<"clear">lfrtip',
	        "oTableTools": {
	            "sSwfPath": "${resourceSwf}"
	        }
		}); 
	 </script>

</div>
</body>

</html>
