<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>

    <h2>Reader Information</h2>

    <table class="table table-striped" style="width:600px;">
        <tr>
            <th>Name</th>
            <td><b><c:out value="${reader.firstName} ${reader.lastName}"/></b></td>
        </tr>
        <tr>
            <th>Address</th>
            <td><c:out value="${reader.address}"/></td>
        </tr>
        <tr>
            <th>City</th>
            <td><c:out value="${reader.city}"/></td>
        </tr>
        <tr>
            <th>Telephone</th>
            <td><c:out value="${reader.telephone}"/></td>
        </tr>
        <tr>
            <td colspan="2"> 
            	<spring:url value="{readerId}/edit.html" var="editUrl">
                    <spring:param name="readerId" value="${reader.id}"/>
                </spring:url>
                <a href="${fn:escapeXml(editUrl)}" class="btn btn-primary btn-sm">Edit Reader</a>
           </td> 
        </tr>
    </table>

    <jsp:include page="../fragments/footer.jsp"/>

</div>

</body>

</html>
