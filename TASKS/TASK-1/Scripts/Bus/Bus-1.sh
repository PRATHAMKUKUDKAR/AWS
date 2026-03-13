#!/bin/bash

# Update system
sudo apt update -y

# Install Apache
sudo apt install apache2 -y

# Start Apache
sudo systemctl start apache2

# Enable Apache at boot
sudo systemctl enable apache2

# Create bus folder
sudo mkdir -p /var/www/html/bus

# Create Bus-1 HTML page
sudo tee /var/www/html/bus/index.html > /dev/null <<EOF
<!DOCTYPE html>
<html>
<head>
<title>Bus Service - Server 1</title>

<style>

body{
font-family: Arial, sans-serif;
background:#f0fff4;
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
color:#27ae60;
}

img{
width:100px;
}

</style>
</head>

<body>

<div class="container">

<img src="https://img.icons8.com/color/96/bus.png"/>

<h1>Bus Booking Service</h1>

<h2>  Welcome to Bus Server 1</h2>

<p>This response is coming from <b>Bus EC2 Instance 1</b></p>

</div>

</body>
</html>
EOF

# Restart Apache
sudo systemctl restart apache2
