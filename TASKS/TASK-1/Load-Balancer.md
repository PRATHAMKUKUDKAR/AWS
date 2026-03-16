# AWS Travel Booking Architecture 🚀

This project demonstrates a **Highly Available AWS Architecture on AWS** using:

* VPC
* Public & Private Subnets
* Internet Gateway
* NAT Gateway
* Bastion Host
* Application Load Balancer
* Target Groups
* Path Based Routing
* Multiple Backend Servers

---

# Architecture Flow

```
User → Load Balancer → Frontend → Backend Services
```

Routing:

```
/train   → Train Servers
/bus     → Bus Servers
/flight  → Flight Servers
```

---

# 1️⃣ Create VPC

### Step 1

Click on **Search bar** and search **VPC**

### Step 2

Click on **VPC Icon**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/28a7bb12-6642-4dd5-bb1f-defb4e3f6e6c" />

---

### Step 3

Click **Create VPC**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d15db2de-8aea-41de-999b-44644173dee7" />

---

### Step 4

Configuration

```
Resources to create : VPC Only
Name Tag : Project-VPC
IPv4 CIDR : 10.0.0.0/16
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/9ed6ba67-95fa-47a3-b279-bdd731d17536" />

---

### Step 5

Click **Create VPC**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/e2c3cf09-9002-430a-a832-159164919153" />

---

# 2️⃣ Create Subnets

### Step 1

Click **Subnets**

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/c2bebdf9-d30b-4619-82ea-dca794da5899" />

---

### Step 2

Click **Create Subnet**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/ea8b5121-33ad-4acb-9d04-79c95d64de9c" />

---

### Step 3

Select VPC

```
Project-VPC
```

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/a0b5230e-54ef-406a-add6-38fe2fb92ee0" />

---

## Public Subnet 1

Configuration

```
Subnet Name : Public-Sub-1
Availability Zone : ap-south-1a
IPv4 CIDR : 10.0.1.0/24
```

<img width="1919" height="1077" src="https://github.com/user-attachments/assets/630eb038-b5e0-4fb7-bb7e-6456741fb533" />

---

## Public Subnet 2

Configuration

```
Subnet Name : Public-Sub-2
Availability Zone : ap-south-1b
IPv4 CIDR : 10.0.2.0/24
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/b70e30d6-647e-449b-9c07-05a55c59633a" />

---

## Private Subnet 1

Configuration

```
Subnet Name : Private-Sub-1
Availability Zone : ap-south-1a
IPv4 CIDR : 10.0.3.0/24
```

<img width="1919" height="1077" src="https://github.com/user-attachments/assets/9095d2b7-f1d0-4e06-9160-1b1ac604b863" />

---

## Private Subnet 2

Configuration

```
Subnet Name : Private-Sub-2
Availability Zone : ap-south-1b
IPv4 CIDR : 10.0.4.0/24
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d7f10966-8691-4a40-87e8-c7c02014a808" />

---

### All Subnets Created

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d1b7aa2c-b751-4996-abc1-d5eb4ff9f05c" />

---

# 3️⃣ Create Internet Gateway

### Step 1

Click **Internet Gateway**

---

### Step 2

Click **Create Internet Gateway**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/e7ded44e-f9de-4708-99e2-da02bd71dbe6" />

---

### Step 3

Configuration

```
Name : Project-IGW
```

Click **Create Internet Gateway**

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/98716cd5-f173-4eb3-80b2-51681a177bfb" />

---

### Step 4

Attach Internet Gateway to VPC

Click **Actions → Attach to VPC**

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/a063deee-054f-4e41-b906-a9873d3a22b5" />

---

### Step 5

Select VPC

```
Project-VPC
```

Click **Attach Internet Gateway**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/84a7ced0-abd2-454f-abda-1f6c55d7d894" />

---


# 4️⃣ Create NAT Gateway

### Step 1

Click **NAT Gateway**

### Step 2

Click **Create NAT Gateway**

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/2aa2b7c0-5c3e-4d26-b56e-cf1e3ad3c7fb" />

---

### Step 3

NAT Gateway Configuration

```
Name : Project-NAT
Availability Mode : Regional
VPC : Project-VPC
Elastic IP Allocation : Automatically
```

Click **Create NAT Gateway**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/ee8ade70-4752-4694-9627-4f6baf25abc3" />

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/07075cc9-2a6d-4264-bd14-d54ce9cfb8ff" />

---

# 5️⃣ Create Route Tables

---

# Public Route Table

### Step 1

When VPC is created **one default route table is automatically created**

### Step 2

Click **Route Tables**

### Step 3

Rename Default Route Table

```
Public-Route-Table
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/12bed074-85c3-4cff-aee9-f1368fbe1d3d" />

---

## Edit Routes

### Step 4

Select **Public-Route-Table**

### Step 5

Click **Routes**

### Step 6

Click **Edit Routes**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/65f62c15-e62d-4af6-b693-f3382a80612d" />

---

### Step 7

Add Route

```
Destination : 0.0.0.0/0
Target : Internet Gateway → Project-IGW
```

Click **Save Changes**

<img width="1918" height="1076" src="https://github.com/user-attachments/assets/05311e23-25b0-4ea7-80a3-5b554090e8c4" />

---

# Associate Public Subnets

### Step 1

Click **Subnet Association**

### Step 2

Click **Edit Subnet Association**

<img width="1919" height="1072" src="https://github.com/user-attachments/assets/6cf8364f-31aa-449c-96bf-a85453be4496" />

---

### Step 3

Select Subnets

```
Public-Sub-1
Public-Sub-2
```

Click **Save Association**

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/42448600-b7c7-46bf-9bc3-bd88c82b5969" />

---

# Private Route Table

### Step 1

Click **Route Tables**

### Step 2

Click **Create Route Table**

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/07678fa2-28a7-48b2-a95c-1522aa6483de" />

---

### Step 3

Configuration

```
Name : Private-Route-Table
VPC : Project-VPC
```

Click **Create Route Table**

<img width="1919" height="1074" src="https://github.com/user-attachments/assets/b284c9bb-1c50-4462-97ed-8848579fc6d7" />

---

## Edit Routes

### Step 1

Click **Routes**

### Step 2

Click **Edit Routes**

<img width="1919" height="1074" src="https://github.com/user-attachments/assets/a7686c20-6b3f-45df-8cb6-aa07b257f961" />

---

### Step 3

Click **Add Route**

```
Destination : 0.0.0.0/0
Target : NAT Gateway → Project-NAT
```

Click **Save**

<img width="1919" height="1072" src="https://github.com/user-attachments/assets/782cfcce-2a51-4517-81ae-61d78175f696" />

---

# Associate Private Subnets

### Step 1

Click **Subnet Association**

### Step 2

Click **Edit Subnet Association**

<img width="1919" height="1078" src="https://github.com/user-attachments/assets/b1bd6a83-2804-467b-a160-8e11314f0ee2" />

---

### Step 3

Select Subnets

```
Private-Sub-1
Private-Sub-2
```

Click **Save Association**

<img width="1919" height="1074" src="https://github.com/user-attachments/assets/6a99e23e-bdad-4fbc-86c4-34ef5808f0c2" />

---

# 6️⃣ Create Bastion / Frontend EC2

### Step 1

Go to **EC2 Dashboard**

### Step 2

Click **Instances**

### Step 3

Click **Launch Instance**

<img width="1919" height="1072" src="https://github.com/user-attachments/assets/6ab21f0c-e3fe-4d93-8ba8-2e39cbf1e713" />

---

## Instance Configuration

```
Name : Bastion / FrontEnd
AMI : Ubuntu
Instance Type : t3.micro
Key Pair : MumbaiKey
```

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/3a0a159c-c313-431a-8cd4-541835544fac" />

<img width="1919" height="1076" src="https://github.com/user-attachments/assets/1c891081-dc54-4743-ac41-d2c4e489184e" />

---

## Network Configuration

```
VPC : Project-VPC
Subnet : Public-Sub-1
Auto Assign Public IP : Enable
Security Group : Public-Security-Group
```

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/f7a2b8b8-7336-4909-9674-b8b949c529b0" />

---

# Security Group Configuration

### Step 1

Select **Bastion Instance**

### Step 2

Click **Security Tab**

### Step 3

Click **Security Group ID**

<img width="1919" height="1077" src="https://github.com/user-attachments/assets/a99a7b07-477d-442f-acf6-32be7ab86ab9" />

---

### Step 4

Click **Edit Inbound Rules**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/61fdad35-3322-408b-8fc4-6fe4d3ee8e00" />

---

### Step 5

Add Rule

```
Type : All Traffic
Source : Anywhere
```

Click **Save Rules**

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/3c8a7b67-f808-4d3e-b9d2-19d8e476dadb" />

---

# Connect Bastion / Frontend EC2

### Commands

```
sudo su -
vi FrontEnd.sh
chmod 777 FrontEnd.sh
./FrontEnd.sh
```

Frontend Script:

```
https://github.com/PRATHAMKUKUDKAR/AWS/blob/main/TASKS/TASK-1/Scripts/FrontEnd/FrontEnd.sh
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/48ef5848-1caa-4cb0-9cc7-dc525c229774" />

---


# 7️⃣ Create Backend EC2 on Private Subnet 1

Instances

```
Train-1
Bus-1
Flight-1
```

---

## Step 1

Click **Instances**

## Step 2

Click **Launch Instance**

<img width="1907" height="1076" src="https://github.com/user-attachments/assets/edf468d9-7c1d-4b80-856f-e084d0330c04" />

---

## Step 3

Instance Configuration

```
Name : Train-1
AMI : Ubuntu
Number of Instances : 3
```

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/382f5ce9-31e1-472b-b9a5-9376997608d1" />

---

## Step 4

Instance Type & Key

```
Instance Type : t3.micro
Key Pair : MumbaiKey
```

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/faee3d55-6f28-4acc-9926-e73cca66088b" />

---

## Step 5

Network Configuration

```
VPC : Project-VPC
Subnet : Private-Sub-1
Auto Assign Public IP : Disable
Security Group : Private-Security-Group
```

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/dcd13ca4-7ede-4ebd-9d3b-6017471a483c" />

---

## Step 6

Rename Instances

```
Train-1
Bus-1
Flight-1
```

<img width="1919" height="1076" src="https://github.com/user-attachments/assets/bd923e6d-5520-4e97-9acc-266cdeec367f" />

---

# Security Group

Select **Train-1 Instance**

Click **Security Tab**

Click **Security Group ID**

<img width="1919" height="1076" src="https://github.com/user-attachments/assets/4292781a-014c-4eb4-8924-2ad97f5147aa" />

---

Click **Edit Inbound Rule**

<img width="1919" height="1074" src="https://github.com/user-attachments/assets/30ee3bf0-d89e-4d50-9871-4fddc7655a67" />

---

Add Rule

```
Type : All Traffic
Source : Anywhere
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/c07c0793-404a-4404-a1bc-bd3cb47ce43e" />

---

# Connect Train-1 Instance

Login through **Bastion Host**

Create PEM File

```
vi MumbaiKey.pem
chmod 400 MumbaiKey.pem
```

SSH to Train-1

```
ssh -i "MumbaiKey.pem" ubuntu@10.0.3.100
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/a23d304d-07af-4e62-98c6-1a3cc89acd93" />

---

Create Script

```
vi Train-1.sh
chmod 777 Train-1.sh
./Train-1.sh
```

Script Link

```
https://github.com/PRATHAMKUKUDKAR/AWS/blob/main/TASKS/TASK-1/Scripts/Train/Train-1.sh
```

<img width="1915" height="1079" src="https://github.com/user-attachments/assets/6aaf564e-b6ef-4ff0-bb19-d722fb664557" />

---

# Connect Bus-1

SSH

```
ssh -i "MumbaiKey.pem" ubuntu@10.0.3.101
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/3127e53f-528e-4d98-ac42-36dadd9dc4c4" />

Run Script

```
vi Bus-1.sh
chmod 777 Bus-1.sh
./Bus-1.sh
```

Script

```
https://github.com/PRATHAMKUKUDKAR/AWS/blob/main/TASKS/TASK-1/Scripts/Bus/Bus-1.sh
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d61def16-0fdc-477f-b688-bb3248cb8b41" />

---

# Connect Flight-1

SSH

```
ssh -i "MumbaiKey.pem" ubuntu@10.0.3.101
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/05b72244-d442-48bd-8978-f826b994afd5" />

Run Script

```
vi Flight-1.sh
chmod 777 Flight-1.sh
./Flight-1.sh
```

Script

```
https://github.com/PRATHAMKUKUDKAR/AWS/blob/main/TASKS/TASK-1/Scripts/Flight/Flight-1.sh
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/8bde4f0b-93de-4782-aa34-061eabfc0fc8" />

---

# Backend EC2 on Private Subnet 2

Instances

```
Train-2
Bus-2
Flight-2
```

<img width="1919" height="1078" src="https://github.com/user-attachments/assets/652ba565-59bd-4ad7-97f9-0b5903c447b7" />

---

Configuration

```
Name : Train-2
AMI : Ubuntu
Instance Type : t3.micro
Key Pair : MumbaiKey
Subnet : Private-Sub-2
```

<img width="1918" height="1079" src="https://github.com/user-attachments/assets/12c95f59-60ef-4797-a7c4-5daa0e17913c" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/6007a70a-52c5-492b-a67e-b5c041b08d14" />

---

Rename Instances

```
Train-2
Bus-2
Flight-2
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/aad6270d-bffe-4161-9bc1-829f3769fa68" />

---

# 8️⃣ Create Backend EC2 on Private Subnet 2

Instances

```
Train-2
Bus-2
Flight-2
```

---

## Step 1

Click **Instances**

## Step 2

Click **Launch Instance**

<img width="1919" height="1078" src="https://github.com/user-attachments/assets/652ba565-59bd-4ad7-97f9-0b5903c447b7" />

---

## Step 3

Instance Configuration

```
Name : Train-2
AMI : Ubuntu
Number of Instances : 3
```

<img width="1918" height="1079" src="https://github.com/user-attachments/assets/12c95f59-60ef-4797-a7c4-5daa0e17913c" />

---

## Step 4

Instance Type & Key

```
Instance Type : t3.micro
Key Pair : MumbaiKey
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/6007a70a-52c5-492b-a67e-b5c041b08d14" />

---

## Step 5

Network Configuration

```
VPC : Project-VPC
Subnet : Private-Sub-2
Auto Assign Public IP : Disable
Security Group : Private-Security-Group
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/798a4e00-9366-49c7-9a3e-d9bcba77c6c4" />

---

## Step 6

Rename Instances

```
Train-2
Bus-2
Flight-2
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/aad6270d-bffe-4161-9bc1-829f3769fa68" />

---

# Connect Train-2 Instance

Login through **Bastion Host**

SSH

```
ssh -i "MumbaiKey.pem" ubuntu@10.0.4.100
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/97a82e63-4bf8-4787-9550-aa4b872adb35" />

---

Run Script

```
vi Train-2.sh
chmod 777 Train-2.sh
./Train-2.sh
```

Script

```
https://github.com/PRATHAMKUKUDKAR/AWS/blob/main/TASKS/TASK-1/Scripts/Train/Train-2.sh
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/2871af02-c51e-4fe5-ba5b-d71ecdcf05e6" />

---

# Connect Bus-2 Instance

SSH

```
ssh -i "MumbaiKey.pem" ubuntu@10.0.4.101
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/b7f1d745-f444-4cd4-be6c-11cf742cddd9" />

---

Run Script

```
vi Bus-2.sh
chmod 777 Bus-2.sh
./Bus-2.sh
```

Script

```
https://github.com/PRATHAMKUKUDKAR/AWS/blob/main/TASKS/TASK-1/Scripts/Bus/Bus-2.sh
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/22ff88d5-458c-4944-88e4-ae34df6729af" />

---

# Connect Flight-2 Instance

SSH

```
ssh -i "MumbaiKey.pem" ubuntu@10.0.4.102
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/df6af4d5-a6e5-498a-99ba-eb382ef2870d" />

---

Run Script

```
vi Flight-2.sh
chmod 777 Flight-2.sh
./Flight-2.sh
```

Script

```
https://github.com/PRATHAMKUKUDKAR/AWS/blob/main/TASKS/TASK-1/Scripts/Flight/Flight-2.sh
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/438e1862-664b-4026-8bf1-62d279b4004f" />

---



# 9️⃣ Create Target Groups

Target Groups

```
FrontEnd-TG
Train-TG
Bus-TG
Flight-TG
```

---

## FrontEnd TG

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/717263c7-dd7c-4c52-8cd8-5e3883ec67f0" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/7de21c5a-cac9-4925-9f7c-e53250aa15b5" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/3d6196f1-1b54-4203-a868-0365bfdb453a" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/a1b95042-9177-4d9a-9bfc-8dd71af13b96" />

<img width="1919" height="1078" src="https://github.com/user-attachments/assets/096fb088-95ec-4237-9194-be8a14304f38" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/afea3ceb-11be-4d48-9bfa-24561898c49f" />

---

# Train Target Group

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/ec462fc7-ea82-49e9-9a4b-91c2ada38604" />

<img width="1919" height="1071" src="https://github.com/user-attachments/assets/238fe9a7-1845-438d-ab81-9bb373fd2fd2" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d732128e-3b6b-450e-9c70-2fdfe898af96" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/974f54c9-c864-45e7-a3bd-083f223d9bbd" />

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/636a158b-54ab-42dd-b54a-ef4703907e9a" />

---

# Bus Target Group

<img width="1919" height="1074" src="https://github.com/user-attachments/assets/2e0e6192-b4f1-491a-88bc-26b56cf38eb9" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d95b8db9-12d4-411b-be3e-07f3aad9dc9e" />

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/46f3f0e8-5d97-4212-806e-3dcdd6412e69" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/ec2afac6-2592-4e2f-806f-19c5307d1673" />

<img width="1919" height="1073" src="https://github.com/user-attachments/assets/ae370a21-b53e-4cd9-b3c0-95a75fea3bd5" />

<img width="1919" height="1074" src="https://github.com/user-attachments/assets/3fd837e3-ac6d-45e1-9736-b4618810a2c8" />

<img width="1919" height="1078" src="https://github.com/user-attachments/assets/8e870ff2-a4f8-412b-980b-241d19e278a1" />

---

# Flight Target Group

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/16e3953f-966d-46e1-9fff-8f9c067c9316" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/6ef9bfab-b105-4a6e-a3f4-28174cd0ca35" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/8ddf3f12-dab6-47fb-9344-4dd735207acc" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d415916f-f3d6-4ed7-91c8-5e8ec458f483" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/7c5d0a3f-fb6e-41eb-a7e1-a6ba008c21f1" />

<img width="1919" height="1076" src="https://github.com/user-attachments/assets/f25dee70-c805-466a-9cde-38559d64510f" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/b832d4f7-769f-4b5a-9ba0-26cf05bcb9e1" />

---

# 🔟 Create Application Load Balancer

<img width="1919" height="1075" src="https://github.com/user-attachments/assets/fc8bd5c4-ef3c-4d87-be55-0839abb44367" />

<img width="1919" height="1077" src="https://github.com/user-attachments/assets/01899c68-4fa4-456f-946e-4b2c787b9874" />

Configuration

```
Name : Project-LB
Scheme : Internet Facing
```

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d1fb9743-29f8-4c81-9cc1-b17b972259d8" />

---

Network Mapping

```
VPC : Project-VPC
Subnet : Public-Sub-1
Subnet : Public-Sub-2
```

<img width="1888" height="1067" src="https://github.com/user-attachments/assets/f71e5be3-357b-4b50-a4a2-1043dc48013a" />

---

# 1️⃣1️⃣ Path Based Routing

Routes

```
/train  → Train-TG
/bus    → Bus-TG
/flight → Flight-TG
```

---

# 1️⃣2️⃣ Access Website

Copy Load Balancer DNS

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/a426c88e-4883-49e0-b66b-558dcded78ff" />

Open Browser

<img width="1919" height="1076" src="https://github.com/user-attachments/assets/7257f755-2648-4f6e-8a19-b138645c8e97" />

---

# Train Booking

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/e672958e-5213-46d3-bd25-934be1a2a5bb" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/f16a1aba-dccd-4b50-8a52-fcacfe47f904" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/b4381bdb-70bf-4580-a77a-53bd143fce14" />

---

# Bus Booking

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/86ff79aa-61ea-46ac-94b2-b379a3c56bb9" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/196fd529-032c-4d7c-8f7c-85d2d004c930" />

<img width="1919" height="1023" src="https://github.com/user-attachments/assets/4b440745-9775-42f5-95cc-ba33fefa0725" />

---

# Flight Booking

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/c7310bdd-c6c4-4fd0-8d91-047d6b4e73f0" />

<img width="1919" height="1079" src="https://github.com/user-attachments/assets/d88bcc5a-e04e-42ea-81d2-67e45737d5f4" />

<img width="1917" height="1024" src="https://github.com/user-attachments/assets/99be51c9-58b0-4507-b049-5e5270d1311c" />

---

# Final Result

Highly Available **AWS Travel Booking Architecture**

Features

* High Availability
* Path Based Routing
* Multiple Backend Services
* Private Subnet Security
* Bastion Host Access

---

# Author

**Pratham Kukudkar**

DevOps | AWS Project

