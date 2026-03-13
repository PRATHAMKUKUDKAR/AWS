# Create vpc 
1. click on serch tab serch vpc
2. click on vpc icone
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/28a7bb12-6642-4dd5-bb1f-defb4e3f6e6c" />
3. click on create VPC
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/d15db2de-8aea-41de-999b-44644173dee7" />
4. Resources to create me choice *VPC Only*
5. Name tag Type *Project-VPC*
6. IPv4 CIDR Type *10.0.0.0/24*
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/9ed6ba67-95fa-47a3-b279-bdd731d17536" />
7. click on Create VPC
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/e2c3cf09-9002-430a-a832-159164919153" />

# create Subnet
1. click on Subnet
<img width="1919" height="1073" alt="image" src="https://github.com/user-attachments/assets/c2bebdf9-d30b-4619-82ea-dca794da5899" />
2. click on create subnet
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/ea8b5121-33ad-4acb-9d04-79c95d64de9c" />
3. select VPC ID *Project-VPC*
<img width="1919" height="1073" alt="image" src="https://github.com/user-attachments/assets/a0b5230e-54ef-406a-add6-38fe2fb92ee0" />
4.Go to Subnet Setting
5. Subnet 1
   1. Subnet name *Public-Sub-1*
   2. Availability Zone * (ap-south-1a)*
   3. IPv4 subnet CIDR block *10.0.1.0/24*
   4. click on add new subnet
<img width="1919" height="1077" alt="image" src="https://github.com/user-attachments/assets/630eb038-b5e0-4fb7-bb7e-6456741fb533" />
 6. Subnet 2
   1. Subnet name *Public-Sub-2*
   2. Availability Zone * (ap-south-1b)*
   3. IPv4 subnet CIDR block *10.0.2.0/24*
   4. click on add new subnet
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/b70e30d6-647e-449b-9c07-05a55c59633a" />
7. Subnet 3
   1. Subnet name *Private-Sub-1*
   2. Availability Zone * (ap-south-1a)*
   3. IPv4 subnet CIDR block *10.0.3.0/24*
   4. click on add new subnet
<img width="1919" height="1077" alt="image" src="https://github.com/user-attachments/assets/9095d2b7-f1d0-4e06-9160-1b1ac604b863" />
8. Subnet 4
   1. Subnet name *Private-Sub-2*
   2. Availability Zone * (ap-south-1b)*
   3. IPv4 subnet CIDR block *10.0.4.0/24*
   4. click on Create Subnet
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/d7f10966-8691-4a40-87e8-c7c02014a808" />
9. Now you caan see All subnets
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/d1b7aa2c-b751-4996-abc1-d5eb4ff9f05c" />

# Create Nat Gateway
1. click on Nat Gateway
2. click on create NAT Gateway
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/ab12774b-f4b3-4d64-9d99-0ffc80d69026" />

# Internet Gateway 
1. Click On imternet Gateway
2. click on Create Internet Gateway


# Create NAT Gateway 
1. type Name *Project-NAT*
2. Availability mode choice *Zonal*
3. Select Subnet *Public-Sub-1*
4. click on Alocate Elastic IP
5. click on create NAT GAteway
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/591c5ca3-64fe-4520-9c9e-2529dfc3d7f5" />
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/0203a072-026d-4048-928a-ecd3ba21c96f" />


# create Route Table 
## Public Route Table
1. we can create vpc so atomatical 1 route table is created
2. click on Route table
3. Edit Name *Public-Route-Table*
4. click on Save
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/12bed074-85c3-4cff-aee9-f1368fbe1d3d" />
5. select Public-Route-Table
6. click on Routes
7. click On edite Routes
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/65f62c15-e62d-4af6-b693-f3382a80612d" />
