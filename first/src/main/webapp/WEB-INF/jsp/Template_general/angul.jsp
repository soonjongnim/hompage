<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<title>Template_general</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Yanone Kaffeesatz">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Russo One">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Caesar+Dressing">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Courgette">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
<style>
</style>
<script>
    var module = angular.module("angularStart", []);

    module.controller("MainController", ['$scope','$http', function($scope,$http) {
    	$scope.getItemList = function(){
    	    $http({
    	      method  : 'get',
    	      url     : 'angulr',
    	      headers : {'Content-Type': 'application/json; charset=utf-8'}
    	    }).success(function(data){
    	      console.log("data: ",data);
    	      $scope.items = data.items;
    	    });
    	  };
    }]);
</script>
<body ng-app="angularStart">
	<div  style="max-width:100%;margin-top:0px;margin-bottom:20px">
	      <div class="w3-container ">
	         <%@ include file="header.jsp"%>
	      </div>
		<div class="w3-center" style="padding: 0px 30px;">
			<div ng-controller="MainController">
	     
	     	 	<button type="button" ng-click="getItemList()">load item list</button>
			  <ul>
				<li ng-repeat="item in items" >
		        <span class="title">{{item.ITEM}}</span>
		        <span>{{item.PRICE}}</span>
		        </li>
		      </ul>   
	        </div>
		</div>
	</div>
</body>
</html>