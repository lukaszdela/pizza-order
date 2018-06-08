<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Order Summary</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css" type="text/css"
          rel="stylesheet">
</head>
<body>
<br>
<div class="container">
    <div class="alert alert-primary" role="alert">
        <p><b>Pizza details:</b></p>
        <p>Ordered pizza: ${param.pizzaName}<br>
            Price: ${param.pizzaPrice}</p>
        <c:if test="${not empty paramValues.extra}">
            Extra components:<br>

            <c:forEach var="extras" items="${paramValues.extra}">

                <c:if test = "${extras eq 'tomato'}" >
                    - Tomato sauce
                    <br>
                </c:if>
                <c:if test = "${extras eq 'garlic'}" >
                    - Garlic sauce
                    <br>
                </c:if>
                <c:if test = "${extras eq 'cheese'}" >
                    - Extra cheese
                    <br>
                </c:if>
                <c:if test = "${extras eq 'thick'}" >
                    - Thick crust
                    <br>
                </c:if>
                <c:if test = "${extras eq 'olive'}" >
                    - Olive oil
                    <br>
                </c:if>

            </c:forEach>

            <br>
            <c:set var="numberExtras" value="${fn:length(paramValues.extra)}"/>
            <c:set var="totalExtras" value="${numberExtras * 5}" />
            <p>Extra component cost: <c:out value="${totalExtras}" /></p>
        </c:if>
        <b><p>Order total:
            <fmt:parseNumber var="pizzaPrice" integerOnly="true" type="number" value="${param.pizzaPrice}" />
            <c:out value="${pizzaPrice + totalExtras}"/>
        </p></b>


    </div>
    <div class="alert alert-warning" role="alert">
        <p><b>Client data:</b></p>
        <p>Name: ${param.name}<br>
            Surname: ${param.surname}<br>
            Phone: ${param.phone}<br>
            Address: ${param.address1}, ${param.address2}</p>
    </div>
    <a href="/PizzaServlet">
        <input type="submit" class="btn btn-info" name="action" value="NEW ORDER">
    </a>
</div>


</body>
</html>
