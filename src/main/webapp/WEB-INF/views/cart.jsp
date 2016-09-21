<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>cart</title>
</head>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
 <script type="text/javascript">
</script> 
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table ">
            <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                 <c:set var="total_cost" value="0" scope="page" />
                <c:forEach items="${cartList}" var="cart">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" > <img class="media-object" src="<c:url value="resources/images/${cart.product.imagename}.jpg"/>" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading" style=color:white >${cart.product.productname}</h4>
                               
                            </div>
                        </div></td>
                        <%-- <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="text" class="form-control" id="exampleInputEmail1" value="${cart.quantity}">
                        </td> --%>
                         <td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber value="${cart.quantity}" /></strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber value="${cart.product.productprice}" type="currency" pattern="#,##,##,##,###.00"/></strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber value="${cart.totalPrice}" type="currency" pattern="#,##,##,##,###.00"/></strong></td>
                        <td class="col-sm-1 col-md-1">
                       <a href="<c:url value="/delete/cart/${cart.cartItemId}"/>"> <button type="button" class="btn btn-danger" >
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></a></td>
                         
                        <c:set var="total_cost" value="${total_cost + cart.totalPrice}" scope="page"/>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <%-- <fmt:formatNumber value="${total_cost}" type="currency" pattern="##,##,##0"/> --%>
                        <td class="text-right"><h3><strong><i class="fa fa-inr" style="color:white"><fmt:formatNumber value="${total_cost}" type="currency" pattern="#,##,##,##,###.00"/></i></strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="<c:url value="/viewall"/>" ><button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <td>
                        <security:authorize access="hasRole('ROLE_USER')">
                       <a href="<c:url value="/shipment.obj"/>">  <button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a>
                        </security:authorize>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>