<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer form</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"
          />
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer.css"
          />

</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Customers form</h2>
    </div>
</div>

<form:form action="saveCustomer" modelAttribute="customer" method="post">

    <form:hidden path="id" />

    <table>
        <tbody>
        <tr>
            <td><label>First name:</label></td>
            <td><form:input path="firstName"/></td>

        </tr>
        <tr>
            <td><label>Last name:</label></td>
            <td><form:input path="lastName"/></td>

        </tr>
        <tr>
            <td><label>E-mail:</label></td>
            <td><form:input path="email"/></td>

        </tr>
        <tr>
            <td><label></label></td>
            <td><input type="submit" value="Save" class="save"></td>

        </tr>
        </tbody>
    </table>
</form:form>

<div style="clear: both"></div>

<a href="${pageContext.request.contextPath}/home/list">Return</a>
</body>
</html>
