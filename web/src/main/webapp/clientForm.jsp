<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Client Form & Extras</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css" type="text/css"
          rel="stylesheet">

</head>
<body>
<br>
<div class="container">

    <div class="alert alert-primary" role="alert">
        <p>Ordered pizza: ${requestScope.pizza.name} (
            <c:if test="${not empty requestScope.pizza.component1}">
                ${requestScope.pizza.component1}
            </c:if>
            <c:if test="${not empty requestScope.pizza.component2}">
                , ${requestScope.pizza.component2}
            </c:if>
            <c:if test="${not empty requestScope.pizza.component3}">
                , ${requestScope.pizza.component3}
            </c:if>
            <c:if test="${not empty requestScope.pizza.component4}">
                , ${requestScope.pizza.component4}
            </c:if>
            <c:if test="${not empty requestScope.pizza.component5}">
                , ${requestScope.pizza.component5}
            </c:if>
            )
            <br>
            Price: ${requestScope.pizza.price}</p>
    </div>

    <form action="orderSummary.jsp" method="post">
        <div class="alert alert-success" role="alert">
            <p>Choose extra components: (cost 5 per each)</p>
            <div class="row">
                <div class="form-group form-check col-md-2">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="extra" value="tomato">
                    <label class="form-check-label" for="exampleCheck1">Tomato sauce</label>
                </div>
                <div class="form-group form-check col-md-2">
                    <input type="checkbox" class="form-check-input" id="exampleCheck2" name="extra" value="garlic">
                    <label class="form-check-label" for="exampleCheck1">Garlic sauce</label>
                </div>
                <div class="form-group form-check col-md-2">
                    <input type="checkbox" class="form-check-input" id="exampleCheck3" name="extra" value="cheese">
                    <label class="form-check-label" for="exampleCheck1">Extra cheese</label>
                </div>
                <div class="form-group form-check col-md-2">
                    <input type="checkbox" class="form-check-input" id="exampleCheck4" name="extra" value="thick">
                    <label class="form-check-label" for="exampleCheck1">Thick crust</label>
                </div>
                <div class="form-group form-check col-md-2">
                    <input type="checkbox" class="form-check-input" id="exampleCheck5" name="extra" value="olive">
                    <label class="form-check-label" for="exampleCheck1">Olive oil</label>
                </div>
            </div>
        </div>


        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
            </div>
            <div class="form-group col-md-6">
                <label for="surname">Surname</label>
                <input type="text" class="form-control" id="surname" name="surname" placeholder="Surname" required>
            </div>
        </div>
        <div class="form-group">
            <label for="inputAddress">Phone</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="505 505 505" required>
        </div>

        <div class="form-group">
            <label for="inputAddress">Address</label>
            <input type="text" class="form-control" id="inputAddress" name="address1" placeholder="1234 Main St" required>
        </div>
        <div class="form-group">
            <label for="inputAddress2">Address 2</label>
            <input type="text" class="form-control" id="inputAddress2" name="address2" placeholder="Apartment, studio, or floor" required
        </div>
        <input type="hidden" name="pizzaName" value="${requestScope.pizza.name}">
        <input type="hidden" name="pizzaPrice" value="${requestScope.pizza.price}">
        <br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
