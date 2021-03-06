<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home Page</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>
	<body>
	    <main>
	        <section class="surveyBox">
	            <h1>
	                Dojo Survey 
	            </h1>
	            <div>
	            	<h3><c:out value="${error}"></c:out></h3>
	            </div>
	            <form action="/result" method="POST">
	                <div class="inputLines">
	                    <label for="name">
	                        * Name:
	                    </label>
	                    <input type="text" id="name" name="name" />
	                </div>
	                <div class="inputLines">
	                    <label for="location">
	                        * Dojo Location:
	                    </label>
	                    <select name="location" id="location">
	                        <option value="">--Select Location--</option>
	                        <option value="Chicago">Chicago</option>
	                        <option value="Seattle">Seatle</option>
	                        <option value="Online">Online</option>
	                        <option value="Burbank">Burbank</option>
	                    </select>
	                </div>
	                <div class="inputLines">
	                    <label for="language">
	                        * Favorite Language:
	                    </label>
	                    <select name="language" id="language">
	                        <option value="">--Select Language--</option>
	                        <option value="HTML">HTML</option>
	                        <option value="CSS">CSS</option>
	                        <option value="Python">Python</option>
	                        <option value="JavaScript">JavaScript</option>
	                    </select>
	                </div>
	                <div class="inputLines">
	                    <label for="comments">
	                          Comments (optional):
	                    </label>
	                    <textarea name="comments" id="" cols="30" rows="10"></textarea>
	                </div>
	                <button type="submit">
	                    Submit
	                </button>
	            </form>
	        </section>
	    </main>
	</body>
</html>