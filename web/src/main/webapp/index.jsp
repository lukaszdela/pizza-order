<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Pizza order</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>
<br>
<div class="container">
    <form action="/PizzaServlet" method="post">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Lp.</th>
                <th>Name</th>
                <th>Pice</th>
                <th>Components</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.pizzas}" var="pizza" varStatus="loop">
            <tr>
                <td>${loop.index + 1}</td>
                <td>${pizza.name}</td>
                <td>${pizza.price}</td>
                <td>${pizza.component1}</td>
                <td>${pizza.component2}</td>
                <td>${pizza.component3}</td>
                <td>${pizza.component4}</td>
                <td>${pizza.component5}</td>
                <td><input class="form-check-input" type="radio" name="pizzaId" value="${pizza.id}" checked></td>
            </tr>
            </tbody>
            </c:forEach>
        </table>
        <input type="submit" class="btn btn-info" name="action" value="CHOOSE PIZZA">
    </form>
</div>
</body>
</html>
