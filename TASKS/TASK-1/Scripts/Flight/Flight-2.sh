#!/bin/bash

# Update system
sudo apt update -y

# Install Apache
sudo apt install apache2 -y

# Start Apache
sudo systemctl start apache2

# Enable Apache on boot
sudo systemctl enable apache2

# Create flight folder
sudo mkdir -p /var/www/html/flight

# Create Flight-2 HTML page
sudo tee /var/www/html/flight/index.html > /dev/null <<EOF
<!DOCTYPE html>
<html>
<head>
<title>Flight Service - Server 2</title>

<style>

body{
font-family: Arial, sans-serif;
background:#fff8f0;
text-align:center;
padding-top:120px;
}

.container{
background:white;
width:450px;
margin:auto;
padding:40px;
border-radius:10px;
box-shadow:0px 5px 15px rgba(0,0,0,0.2);
}

h1{
color:#333;
}

h2{
color:#e67e22;
}

img{
width:100px;
}

</style>
</head>

<body>

<div class="container">

<img src="https://img.icons8.com/color/96/airplane-take-off.png"/>

<h1>Flight Booking Service</h1>

<h2>  Welcome to Flight Server 2</h2>

<p>This response is coming from <b>Flight EC2 Instance 2</b></p>

</div>

</body>
</html>
EOF

# Restart Apache
sudo systemctl restart apache2
