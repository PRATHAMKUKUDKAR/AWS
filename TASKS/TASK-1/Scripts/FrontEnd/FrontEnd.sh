<!DOCTYPE html>
<html>
<head>
<title>Travel Booking</title>

<style>

body{
font-family: Arial, sans-serif;
background:#f4f4f4;
text-align:center;
padding-top:80px;
}

h1{
color:#333;
}

.container{
display:flex;
justify-content:center;
gap:40px;
margin-top:50px;
}

.card{
background:white;
padding:30px;
border-radius:10px;
width:220px;
box-shadow:0px 5px 10px rgba(0,0,0,0.2);
cursor:pointer;
transition:0.3s;
}

.card:hover{
transform:scale(1.1);
}

.card img{
width:100px;
}

.card h2{
margin-top:15px;
color:#444;
}

a{
text-decoration:none;
}

</style>

</head>

<body>

<h1>Welcome to Travel Booking</h1>
<p>Select your travel option</p>

<div class="container">

<a href="http://Project-LB-551954984.ap-south-1.elb.amazonaws.com/train">
<div class="card">
<img src="https://img.icons8.com/color/96/train.png"/>
<h2>Train Booking</h2>
</div>
</a>

<a href="http://Project-LB-551954984.ap-south-1.elb.amazonaws.com/bus">
<div class="card">
<img src="https://img.icons8.com/color/96/bus.png"/>
<h2>Bus Booking</h2>
</div>
</a>

<a href="http://Project-LB-551954984.ap-south-1.elb.amazonaws.com/flight">
<div class="card">
<img src="https://img.icons8.com/color/96/airplane-take-off.png"/>
<h2>Flight Booking</h2>
</div>
</a>

</div>

</body>
</html>
