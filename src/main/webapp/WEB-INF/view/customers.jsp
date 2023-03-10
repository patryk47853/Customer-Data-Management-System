<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customers</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"
    />

</head>
<body>

<%@ page import="pl.patrykjava.SortingValues" %>

<c:url var="sortByFirstName" value="/home/list" >
    <c:param name="sort" value="<%=Integer.toString(SortingValues.FIRST_NAME) %>" />
</c:url>

<c:url var="sortByLastName" value="/home/list" >
    <c:param name="sort" value="<%=Integer.toString(SortingValues.LAST_NAME)%>" />
</c:url>

<c:url var="sortByEmail" value="/home/list" >
    <c:param name="sort" value="<%=Integer.toString(SortingValues.EMAIL)%>" />
</c:url>

<div id="wrapper">
    <div id="header">
        <h2>Customers</h2>
    </div>
</div>

<div id="container">
    <div id="content">
        <form:form action="search" method="get">
            <input type="search" name="customerName" />
            <input type="submit" value="Search" class="add-button">
        </form:form>
        <table>
            <tr>
                <th><a href="${sortByFirstName}">First Name</a></th>
                <th><a href="${sortByLastName}">Last Name</a></th>
                <th><a href="${sortByEmail}">Email</a></th>
                <th>Action</th>
            </tr>

            <c:forEach var="myCustomer" items="${customers}">

                <c:url var="updateLink" value="/home/updateCustomer">
                    <c:param name="customerId" value="${myCustomer.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/home/deleteCustomer">
                    <c:param name="customerId" value="${myCustomer.id}"/>
                </c:url>
                <tr>
                    <td>${myCustomer.firstName}</td>
                    <td>${myCustomer.lastName}</td>
                    <td>${myCustomer.email}</td>
                    <td>
                        <a href="${updateLink}">Update</a>
                    |
                    <a href="${deleteLink}"
                       onclick="return confirm('Are you sure you want to delete ${myCustomer.firstName} from database?');"
                    >Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <input type="button" value="Add customer"
               onclick="window.location.href='addCustomer'; return false;"
               class="add-button"
               />
    </div>

</div>

</body>
</html>
