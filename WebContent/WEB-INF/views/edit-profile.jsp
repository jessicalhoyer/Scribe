<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

        <title>Scribe | Edit Profile</title>

        <!-- stylesheet -->
        <spring:url value="/resources/css/main.css" var="mainCss"/>
        <link href="${mainCss}" rel="stylesheet" >

        <!-- fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Quattrocento Sans&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Shadows Into Light&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Quattrocento&display=swap" rel="stylesheet">
        

    </head>
    <body>
        <header>
            <!-- logo here potentially -->
			<nav>
				<ul>
					<li><p class="title">Scribe</p></li>
					<li>Welcome ${currentUser.username}</li>
					<li><a href="profile">Profile</a></li>
					<li><a href="directory">Directory</a></li>
					<li><a href="logout">Logout</a></li>
				</ul>
			</nav>
	            
        </header>


        <div id="wrapper">
        
        <section class="content">
        
        <h2>Edit Profile</h2>

            <form class="center" action="./edit-profile" method="post">
            
            	<div class="line">
	            	<label for="username">Username</label>
	            	<input type="text" name="username" value="${currentUser.username}"/>
            	</div>
            	
            	<div class="line">
	            	<label for="password">Password</label>
	            	<input type="password" name="password"/>
            	</div>
            	
            	<div class="line">
	            	<label for="c-password">Confirm Password</label>
	            	<input type="password" name="c-password"/>
            	</div>
            	
            	<div class="line">
            		<input type="submit" value="Submit" name="submit"/>
            		<a href="profile" class="button">Cancel</a>
            	</div>
            	
            <p>${usernameBlank}</p>
            <p>${usernameTaken}</p>
            <p>${passwordBlank}</p>
            <p>${passwordMismatch}</p>
            <p>${usernameLength}</p>
            <p>${passwordLength}</p>
            <p>${profileEditSuccess}</p>
            
            </form>
			
			</section>
            
        </div>

        <footer>
            <p class="center">Scribe &copy; Jessica Hoyer 2021</p>
        </footer>
</head>
<body>