<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>viewall using angular js</title>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	angular.module('myApp', []).controller('mainController',function($scope, $http) {
				$scope.categ;
				$http({method : 'GET',url : 'ang'}).success(function(data, status, headers, config)
				{		
					$scope.categ = data;
					console.log("length" + categ.length);
					

				});

			});
</script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr>
	<hr>
	<div class="container" ng-app="myApp" ng-controller="mainController">
	<input type="text" class="form-control" placeholder="Search Camera" ng-model="search" width="40">
	<table border="1">
	<th>Name</th>
	<th>Category</th>
	<th>Price</th>
	<th>Product Description</th>
	<th>Image</th>
		<tr ng-repeat="c in categ | filter:search">
			<td>{{c.productname}}</td>
			<td>{{c.category}}</td>
			<td>RS:{{c.productprice}}</td>
			<td>{{c.productdescription}}</td>
			<td><img src="resources/images/{{c.imagename}}.jpg" width="50",height="50"></td>
		</tr>
		</table>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>