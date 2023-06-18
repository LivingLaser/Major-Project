# Major-Project

### Fresh Basket | Online Grocery Store
##### Description - This is a platform for buying and selling of groceries online more conveniently.
##### Technologies:
+ Designed the Web App with front-end on JSP, CSS, Bootstrap & JavaScript.
+ Developed the Web App with back-end using Servlet technology and MySQL database.

### Database & Tables
#### Database Name - ecom
#### Table List:
| Tables in ecom | Entity |
| -------------- | ------ |
| admin | Strong |
| contact | Strong |
| user | Strong |
| product | Strong |
| cart | Weak |
| orders | Weak |

### Table Attributes & Creation
+ If you want to run this project on your system then you need to create the following tables mentioned above.
+ The detailed information and table creation queries are given below.
#### admin table
| Field | Type | Null | Key | Default | Extra |
| ----- | ---- | ---- | --- | ------- | ----- |
| aid | int | NO | PRI | NULL | auto_increment |
| username | varchar(50) | YES | | NULL | |
| password | varchar(50) | YES | | NULL | |
##### Table creation query
``` sql
create table admin (aid int AUTO_INCREMENT PRIMARY KEY, username varchar(50), password varchar(50));
insert into admin set username='admin', password='nimda';
```

#### contact table
| Field | Type | Null | Key | Default | Extra |
| ----- | ---- | ---- | --- | ------- | ----- |
| mid | int | NO | PRI | NULL | auto_increment |
| name | varchar(50) | YES | | NULL | |
| email | varchar(50) | YES | | NULL | |
| message | varchar(500) | YES | | NULL | |
##### Table creation query
``` mysql
create table contact (mid int AUTO_INCREMENT PRIMARY KEY, name varchar(50), email varchar(50), message varchar(500));
```

#### user table
| Field | Type | Null | Key | Default | Extra |
| ----- | ---- | ---- | --- | ------- | ----- |
| uid | int | NO | PRI | NULL | auto_increment |
| name | varchar(50) | YES | | NULL | |
| email | varchar(50) | YES | UNI | NULL | |
| phone_number | varchar(10) | YES | | NULL | |
| address | varchar(100) | YES | | NULL | |
| city | varchar(50) | YES | | NULL | |
| pincode | varchar(8) | YES | | NULL | |
| password | varchar(30) | YES | | NULL | |
##### Table creation query
``` mysql
create table user (uid int AUTO_INCREMENT PRIMARY KEY, name varchar(50), email varchar(50) UNIQUE, phone_number varchar(10), address varchar(50), city varchar(50), pincode varchar(8), password varchar(30));
```

#### product table
| Field | Type | Null | Key | Default | Extra |
| ----- | ---- | ---- | --- | ------- | ----- |
| pid | int | NO | PRI | NULL | auto_increment |
| name | varchar(50) | YES | MUL | NULL | |
| description | varchar(500) | YES | | NULL | |
| quantity | varchar(10) | YES | | NULL | |
| price | varchar(10,2) | YES | | NULL | |
| category | varchar(50) | YES | | NULL | |
| image | varchar(500) | YES | | NULL | |
| stock | int | YES | | NULL | |
##### Table creation query
``` mysql
create table product (pid int AUTO_INCREMENT PRIMARY KEY, name varchar(50), description varchar(500), quantity varchar(10), price double(10,2), category varchar(50), image varchar(500), stock int, UNIQUE(name, quantity));
```

#### cart table
| Field | Type | Null | Key | Default | Extra |
| ----- | ---- | ---- | --- | ------- | ----- |
| uid | int | YES | MUL | NULL | |
| pid | int | YES | MUL | NULL | |
| qty | int | YES | | 1 | |
##### Table creation query
``` mysql
create table cart (uid int, pid int, qty int DEFAULT 1, FOREIGN KEY(uid) REFERENCES user(uid), FOREIGN KEY(pid) REFERENCES product(pid));
```

#### orders table
| Field | Type | Null | Key | Default | Extra |
| ----- | ---- | ---- | --- | ------- | ----- |
| uid | int | YES | MUL | NULL | |
| pid | int | YES | MUL | NULL | |
| qty | int | YES | | NULL | |
| payment | varchar(10) | YES | | NULL | |
| order_date | date | YES | | curdate() | DEFAULT_GENERATED |
| order_time | time | YES | | curtime() | DEFAULT_GENERATED |
##### Table creation query
``` mysql
create table orders (uid int, pid int, qty int, payment varchar(10), order_date date DEFAULT (CURDATE()), order_time time DEFAULT (CURTIME()), FOREIGN KEY(uid) REFERENCES user(uid), FOREIGN KEY(pid) REFERENCES product(pid));
```
