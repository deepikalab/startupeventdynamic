<!Doctype html>
<html>
<head>
<title>Registration Form </title>
<style>
body{
background:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.4)),url('https://sidigital.co/static/33c22bbc04bd201be169e8437539e491/37e83/bespoke-software-development.png');
height:100vh;
background-size: cover;
background-repeat: no-repeat;
background-position:center;
font-family:Verdana;
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
margin-left:60px;
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
<form action="CheckProcess" method="POST" name="form1" onsubmit="return myfun()">
	<div class="registration">
    <h2> Register Here</h2>
	<div>
	<label for="Username1">User Name</label>
	<input type="text" placeholder="User name" name="username" required>
	</div>
	
	<div>
	<label for="EmailID">Email ID</label>
	<input type="email" placeholder="Email ID" name="mail" required>
	</div>
	
   <div>
	<label for="Password">Password</label>
	<input id="password" type="Password" placeholder="Password" name="pwd1" value="" onblur='myfun();' required>
	</div>
	
	<div>
	<label for="Confirm Password">Confirm Password</label>
	<input id="confirm_password" type="Password" placeholder="Re-Type password" name="pwd2"  value="" onblur='myfun();'required>
	
	</div>

	<div>
	<label for="Contact Number">Contact Number</label>
	<input type="number" placeholder="Contact Number" name="phone" maxlength="10" pattern="[1-9]{1}[0-9]{9}" required>
	</div>
	
	<div>
	<label for="College">College</label>
	<input type="text" placeholder="College Name" name="colg" pattern="[a-zA-Z\. ]+" required>
	</div>
	
	<div>
	<label for="Department">Department</label>
	<select id="department" name="department"  onblur="myfun()" required>
		 <option value="">--Select--</option>
         <option  value="Computer Science">Computer Science</option>
		 <option  value="Information Technology">Information Technology</option>
	     <option  value="Electronics & Communication">Electronics & Communication</option>
		 <option  value="Electronics & Electrical">Electronics & Electrical</option>
	     <option  value="Mechanical">Mechanical</option>
	    
	   </select>
	 </div> 
	<!--  <input type="submit" value="Go"> -->
<script>
function myfun(){
var pwd1= document.getElementById("password").value;
var pwd2= document.getElementById("confirm_password").value;
var dept=document.getElementById("department").value;

/*if(pwd1=="" || pwd2==""){
    document.getElementById("message").innerHTML="<span style ='color:red'>&nbsp &nbsp &nbsp Password fields can't be empty</span>";
    return false;
  }*/
if(pwd1.length<5 || pwd2.length<5){
   document.getElementById("message").innerHTML="<span style ='color:red'>&nbsp &nbspPasswords length should be atleast 5</span>";
   return false;
  }
if(pwd1.length>20 ||pwd2.length>20){
  document.getElementById("message").innerHTML="<span style ='color:red'>&nbsp &nbsp &nbsp &nbsp &nbspPasswords length too long</span>";
  return false;
  }
if(pwd1!=pwd2){
  document.getElementById("message").innerHTML="<span style ='color:red'>&nbsp &nbsp &nbsp &nbsp &nbsp  Passwords don't match</span>";
  return false;
  }

if(dept==="")
    {
    document.getElementById("message").innerHTML=" &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Select a department";
    document.getElementById("message").style.color="Red";
    return false;
   }
else
{
      document.getElementById("message").innerHTML="";
	
 }
}

</script>
	 <span id="message"></span>
   <div class="container">
   <br>
	<input type="submit" value="Register" class="myButton">
	</div> 
	<p class="tab"> Already registered? <a href="login.jsp">Login</a></p>

	</div>
	
	</form>
</body>
</html>