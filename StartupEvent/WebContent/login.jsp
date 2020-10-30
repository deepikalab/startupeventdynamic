<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!Doctype html>
<html>
<head>
<title>Login Page</title>
<style>
body{
background:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.4)),url('https://sidigital.co/static/33c22bbc04bd201be169e8437539e491/37e83/bespoke-software-development.png');
height:100vh;
background-size: cover;
background-repeat: no-repeat;
background-position:center;
font-family:sans-serif;
}
a{
	color:#0080ff;
	text-decoration:none;
}
.registration{
	max-width:400px;
	border-right: 20px;
	border-radius:30px;
	margin: auto;
	background: rgba(0,0,0,0.7);
	box-sizing: border-box;
	padding:40px;
	color:  #ff6600;
	margin-top:100px;
}

h2{
	text-align:center;
}
.tab{
margin-left:50px;
}
input[type=number],input[type=text],input[type=password],input[type=email],select{
	width:100%;
	box-sizing:border-box;
	padding:3px;
	border-radius:3px;
	box-shadow:none;
	margin:5px;
}

input:focus{
	outline: none !important;
	border-color:transparent;	
	box-shadow:0 0 7px #719ece;
	}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
.container{
	text-align:center;
}
.myButton {
	box-shadow: 0px 2px 14px -7px #f05e44;
	background:linear-gradient(to bottom, #f05e44 5%, #db4228 100%);
	background-color:#f05e44;
	border-radius:33px;
	border:1px solid #e3543b;
	display:inline-block;
	top:85%;
    position:relative;
	cursor:pointer;
	color:#ffffff;
	text-align:center;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:8px 12px;
	text-decoration:none;
	text-shadow:0px 0px 0px #f05e44;
}
.myButton2{
	box-shadow: 0px 2px 14px -7px #f05e44;
	background:linear-gradient(to bottom, #f05e44 5%, #db4228 100%);
	background-color:#f05e44;
	border-radius:33px;
	border:1px solid #e3543b;
	display:inline-block;
	top:85%;
    position:relative;
	cursor:pointer;
	color:#ffffff;
	text-align:center;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:8px 12px;
	text-decoration:none;
	text-shadow:0px 0px 0px #f05e44;
}
.myButton:hover {
	background:linear-gradient(to bottom, #db4228 5%, #f05e44 100%);
	background-color:#db4228;
}
.myButton:active {
	position:relative;
	top:1px;
}

</style>


</head>

<body>

<form name="Form1" action="validate2.jsp" method="POST" >
	<div class="registration">
    <h2>Login Here</h2>
	<div>
	<label for="Username2">User Name</label>
	<input type="text" placeholder="Username" name="lg1" required>
	</div>
	
	<div>
	<label for="Email ID">Email ID</label>
	<input type="text" placeholder="EmailID" name="lg2" required>
	</div>
	
	<div>
	<label for="Password">Password</label>
	<input type="Password" placeholder="Password" name="lg3" required>
	</div>
	
	<div class="container">
	<input type="submit" value="Login" name="button1" class="myButton">
	</div>
	<p class="tab">Not registered yet? <a href="register.jsp">Register Now</a></p>
	</div>
	</form>
</body>

</html>