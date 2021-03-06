<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

        <title>Scribe | Delete Profile</title>

        <!-- stylesheet -->
        <spring:url value="/resources/css/main.css" var="mainCss"/>
        <link href="${mainCss}" rel="stylesheet" >

        <!-- fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Quattrocento Sans&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Shadows Into Light&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Quattrocento&display=swap" rel="stylesheet">
</head>
<body>

	<!-- start header -->
	<header>
		<nav>
			<ul>
				<li><p class="title">Scribe</p></li>
				<li>Welcome ${currentUser.username}</li>
				<li><a href="${pageContext.request.contextPath}/profile">Profile</a></li>
				<li><a href="${pageContext.request.contextPath}/doc">Directory</a></li>
				<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
			</ul>
		</nav>	            
	</header>
        
	<!-- end header -->
	
	<!-- start wrapper -->

	<div id="wrapper">
        
 	<!-- start content section -->
        
        <section class="content">
        
        <h2>Delete Profile</h2>
        
        	<!-- start form -->

            <form class="center" action="./delete-profile" method="post">
            
            	<p>Are you sure you want to delete your account?</p>
	
				<input type="hidden" name="id" value="${currentUser.id}"/>
            	
            	<input type="submit" value="Delete" name="submit"/>
            	<a href="profile" class="button">Cancel</a>
            
            </form>
            
            <!-- end form -->
            
        </section>
        
        <!-- end content section -->
            
        </div>
        
        <!-- end wrapper -->
        
        <!-- start footer -->

	<footer>
		<p class="center">Scribe &copy; Jessica Hoyer 2021</p>
	</footer>
 
	<!-- end footer -->
</body>
</html>