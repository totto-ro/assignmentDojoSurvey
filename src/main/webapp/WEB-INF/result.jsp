<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Result Page</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>
	<body>
		<main>
	        <section class="boxInfo">
	            <h1>Submitted Info</h1>
	            <div class="infoDetails">
	            <c:set var="element" value="${ results }"/>
	                <p><span> Name: </span> <c:out value="${ element.getName() }"></c:out> </p>
	                <p><span> Location: </span> <c:out value="${ element.getLocation() }"></c:out> </p>
	                <p><span> Favorite Language: </span> <c:out value="${ element.getLanguage() }"></c:out> </p>
	                <p><span> Comments: </span> <c:out value="${ element.getComments() }"></c:out> </p>
	                
	            </div>
	            <div>
	                <button>
	                    <a href="/">Go Back</a>
	                </button>
	            </div>
	        </section>
    	</main>
	</body>
</html>