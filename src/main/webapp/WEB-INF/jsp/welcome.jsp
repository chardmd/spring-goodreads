<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html lang="en">

	<jsp:include page="fragments/headTag.jsp"/> 

<body>

<div class="container">

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
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="http://placehold.it/1200x400/16a085/ffffff&text=Spring GoodReads">
                <div class="carousel-caption">
                    <h3>
                        Github Repo</h3>
                    <p>
                    	Basic Architecture - Spring Framework.
                    </p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/e67e22/ffffff&text=Bootstrap 3">
                <div class="carousel-caption">
                   <h3>Responsive, Mobile ready.</h3>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/2980b9/ffffff&text=Spring Based App">
                <div class="carousel-caption">
                    <h3>
                        Java Framework</h3>
                    <p>
                        A spring based application to demonstrate the basics of Spring-MVC, JPA, HyperSQLDB, and Bootstrap 3</p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/8e44ad/ffffff&text=Pre-requisites">
                <div class="carousel-caption">
                    <h3>
                        Maven 3, Git, and Eclipse with M2E Plugin</h3>
                </div>
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->
        <ul class="nav nav-pills nav-justified">
            <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">Spring GoodReads<small>
            Github Repo</small></a></li>
            <li data-target="#myCarousel" data-slide-to="1"><a href="#">Bootstrap<small>Responsive, Mobile ready.</small></a></li>
            <li data-target="#myCarousel" data-slide-to="2"><a href="#">Spring Based App<small>Java Framework</small></a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="#">Pre-requisites<small>Additional Tools</small></a></li>
        </ul>
    </div>
    <!-- End Carousel -->
	
	<jsp:include page="fragments/footer.jsp" />

</div>	
	 
</body>

</html>
