<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background:  url(https://images.hdqwalls.com/download/broken-glass-pieces-4k-rr-2048x1152.jpg);
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

</style>
   </head>

<body>
  <div class="container">
    <div class="title">User Registration</div>
    <div class="content">
      <form  action="Registration" method="post" name="form1" onsubmit="return checkforblank()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" placeholder="Enter your first name" id="fname" name="fname">
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" placeholder="Enter your last name" id="lname" name="lname">
          </div>
<div class="input-box">
            <span class="details">Designation</span>
            <input type="text" placeholder="Enter your Designation" id="des" name="des">
          </div>
<div class="input-box">
            <span class="details">Employee Id</span>
            <input type="text" placeholder="Enter your employee id" id="empId" name="empId" >
          </div>
<div class="input-box">
            <span class="details">Seat Number</span>
            <input type="text" placeholder="Enter your Seat no" id="seatno" name="seatno">
          </div>
<div class="input-box">
            <span class="details">PC Number</span>
            <input type="text" placeholder="Enter your PC Number" id="pcno" name="pcno">
          </div>
<div class="input-box">
            <span class="details">IP Address</span>
            <input type="text" placeholder="Enter your IP Address" id="ip" name="ip">
          </div>
          <div class="input-box">
            <span class="details">Contact Number</span>
            <input type="text" name="IN" placeholder="Enter your number" title="Error Message" pattern="[1-9]{1}[0-9]{9}" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input name="password" type="password" placeholder="Enter your password"/>
          </div>
        </div>
<div class="button">
        <input type="submit" value="Register" onclick="checksPassword(document.form1.password)"/>
 </div>
     </form>
    
  </div>
<script>
function checksPassword(password){
var decimal=  /^(?=.\d)(?=.[a-z])(?=.[A-Z])(?=.[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
if(!password.value.match(decimal))
{
alert('password should be of min length of 6 with special characters should be incorporated.')
return true;
}
else
{
return false;
}
}
function checkforblank()
{
if(document.getElementById('fname').value=="")
{
alert('please enter your first name');
document.getElementById('fname').style.borderColor="red";
return false;
}
if(document.getElementById('lname').value=="")
{
alert('please enter your last name');
document.getElementById('lname').style.borderColor="red";
return false;
}
if(document.getElementById('des').value=="")
{
alert('please enter your Designation');
document.getElementById('des').style.borderColor="red";
return false;
}
if(document.getElementById('seatno').value=="")
{
alert('please enter your Seat Number');
document.getElementById('seatno').style.borderColor="red";
return false;
}
if(document.getElementById('pcno').value=="")
{
alert('please enter your PC Number');
document.getElementById('pcno').style.borderColor="red";
return false;
}
if(document.getElementById('ip').value=="")
{
alert('please enter your IP Address');
document.getElementById('ip').style.borderColor="red";
return false;
}
}
</script>
</body>
</html>