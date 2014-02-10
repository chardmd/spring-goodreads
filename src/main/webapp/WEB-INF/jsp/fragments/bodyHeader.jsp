<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<nav class="navbar navbar-default" role="navigation">
	<ul class="nav navbar-nav">
		 <li><a href="<spring:url value="/" htmlEscape="true" />">Home</a></li>
         <li><a href="<spring:url value="/readers/find.html" htmlEscape="true" />">Find Readers</a></li>
         <li><a href="<spring:url value="/books.html" htmlEscape="true" />">Books</a></li>
         <li><a href="<spring:url value="/oups.html" htmlEscape="true" />">Exception</a></li>
         <li><a href="#">Wish List</a></li>
         <li><a href="#">Help</a></li>
    </ul>
</nav>

<div class="jumbotron">
  <h1>Spring GoodReads</h1>
  <p>A spring based application to demonstrate the power of <a href="#">Spring Data JPA</a>, 
  		<a href="#">Spring-MVC</a>, <a href="#">Bootstrap</a>, and <a href="#">M2e</a>.</p>
</div>

