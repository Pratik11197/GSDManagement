<!DOCTYPE html>
<html>
<head>
<style type="text/css">
*{
	margin:0px;
	padding:0px;
}

body{
    background:  url(https://images.hdqwalls.com/download/broken-glass-pieces-4k-rr-2048x1152.jpg);
	background-attachment:fixed;
	background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.menu{

	width: 100%;
	height: 100px;
	background-color: rgba(0,0,0,0.5);
}

.leftmenu{
	width: 20%;
	line-height: 100px;
	float: left;
/*	background-color: yellow;*/
}

.leftmenu h4{
	padding-left: 70px;
	font-weight: bold;
	color: white;
	font-size: 22px;
	font-family: 'Montserrat', sans-serif;
}


.rightmenu{
	width:70%;
	height: 100px;
	float: right;
/*	background-color: white; */
}

.rightmenu ul{
	margin-left: 200px;
}

.rightmenu ul li {
	font-family: 'Montserrat', sans-serif;
	display: inline-block;
	list-style: none;
	font-size: 15px;
	color:white;
	font-weight: bold;
	line-height: 100px;
	margin-left: 40px;
	text-transform: uppercase;

}

.rightmenu ul li a {
text-decoration:none;
color:white;
}
#fisrtlist{
	color: orange;
}

.rightmenu ul li:hover{
	color: orange;
}
.inline{
margin-top:10px;
margin-left:595px;
}

.text{
	width: 100%;
	margin-top: 185px;
	text-transform: uppercase;
	text-align: center;
	color:white;
}

.text h4{

	font-size: 14px;
	font-family: 'Open Sans', sans-serif;
}

.text h1{
	font-size:62px;
	font-family: 'Montserrat', sans-serif;
	font-weight: 700px;
	margin:14px 0px;
}

.text h2{
	font-size:62px;
	font-family:  Copperplate Gothic;
	font-weight: 700px;
	margin:14px 0px;
	color:#00BFFF;
}

.text h3{
	font-size: 12px;
	font-family: 'Open Sans', sans-serif;
}


#buttonone{
	background-color: #696969;
	border: none;
	font-size: 12px;
	font-weight: bold;
	text-transform: uppercase;
	line-height: 40px;
	width: 150px;
	font-family: 'Montserrat', sans-serif;
	margin-top: 25px;
	border: 3px solid white;
	cursor: pointer;
}
#buttonfour{
    background-color: RED;
	border: none;
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-weight: bold;
	line-height: 40px;
	border: 3px solid white;
	width: 150px;
	cursor: pointer;
	position: absolute;
	top:120px;
	right:60px;
	}	
#buttontwo{

	background-color: #696969;
	border: none;
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-weight: bold;
	line-height: 40px;
	border: 3px solid white;
	width: 150px;
	cursor: pointer;
	}
	
#button2{
    background-color: #696969;
	border: none;
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-weight: bold;
	line-height: 40px;
	border: 3px solid white;
	width: 150px;
	cursor: pointer;
	}
	
#buttonthree{
    background-color: #696969;
	border: none;
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-weight: bold;
	line-height: 40px;
	border: 3px solid white;
	width: 150px;
	cursor: pointer;
}
</style>

	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
</head>
<body>

	<div class="body1">
		<div class="menu">
			
			<div class="leftmenu">
				<h4> WELCOME  </h4>
			</div>

			<div class="rightmenu">
				<ul>
					<li id="fisrtlist"> HOME  </li>
					<li><a href ="view-gsd.jsp">Services</a></li>
					<li><a href ="AboutUs.jsp">About Us</a></li>
					<li><a href ="Blogs.jsp">Blogs</a></li>
					<li><a href ="ContactUs.jsp">Contact Us</a></li>
					<li><a href ="Works.jsp">Works</a></li>
				</ul>
			</div>

		</div>
<div class="button">
<a href="index.jsp"><button id="buttonfour"> LOGOUT </button></a></div>
		<div class="text">
			<h1>USER HOME PAGE </h1>
			
			</div>
			<div class="inline">
			
			<li><a href="raise_gsd.jsp"><button id="buttonone"> GSD RAISE BUTTON </button></a></li><br>
			<li><a href="gsdcreate.jsp"><button id="buttonthree"> CHANGE PC </button></a></li>
			
			
<br>
<li><a href="gsdcreate.jsp"><button id="buttontwo"> TRAVEL INFO </button></a></li>
			</div>
		

	</div>
</body>
</html>