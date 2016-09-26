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
                        <th>Price</th>
                        <th>Total</th>
                        <th class="text-center">Date</th>
                        <th class="text-center">Time</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
               
                <c:forEach items="${cartList}" var="cart">
                    <tr>
                        <td class="col-sm-6 col-md-4">
                        <div class="media">
                            <a class="thumbnail pull-left" > <img class="media-object" src="<c:url value="resources/images/${cart.product.imagename}.jpg"/>" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading" style=color:white >${cart.product.productname}</h4>
                               
                            </div>
                        </div></td>
                         <td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber value="${cart.quantity}" /></strong></td>
                         
                        <td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber value="${cart.product.productprice}" type="currency" pattern="#,##,##,##,###.00"/></strong></td>
                       <td class="col-sm-1 col-md-2 text-center"><strong><fmt:formatNumber value="${cart.product.productprice * cart.quantity}" type="currency" pattern="#,##,##,##,###.00"/></strong></td>
                        <td class="col-sm-1 col-md-1"> ${cart.date}</td>  
                        <td class="col-sm-2 col-md-2"> ${cart.time}</td> 
                                             
                    </tr>
                    </c:forEach>
                   
                    
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>