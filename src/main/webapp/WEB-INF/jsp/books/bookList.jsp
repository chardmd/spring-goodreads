<!DOCTYPE html>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>

<div class="container">
   
	<jsp:include page="../fragments/bodyHeader.jsp"/>
  
  	<div class="bookList">
  
		<table class="table table-striped table-bordered datatable">
		   <thead>
		     <tr>
		       <th>#</th>
		       <th>Title</th>
		       <th>Author</th>
		     </tr>
		   </thead>
		   <tbody>
		   <c:forEach var="book" items="${books.bookList}">
			     <tr>
			       <td>${book.id}</td>
			       <td>${book.title}</td>
			       <td>${book.author}</td>
			     </tr>
			</c:forEach>
		   </tbody>
		 </table>
		 
	 </div>
	 
	 <jsp:include page="../fragments/footer.jsp" />

</div>


</body>
</html>