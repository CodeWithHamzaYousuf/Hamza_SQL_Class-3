create database hamza_sql_1

create table customer_table(
C_id int PRIMARY KEY,
C_name nvarchar(20),
C_address varchar(50),
C_city nvarchar(15)
);

select * from order_table
select * from customer_table


insert into customer_table values(1001,'Hamza','Liaquatabad','Karachi')
insert into customer_table values(1002,'Ali','Nazimabad','Karachi')
insert into customer_table values(1003,'Talal','DHA','Islamabad')
insert into customer_table values(1004,'Rameez','Gulshan','Karachi')
insert into customer_table values(1005,'Abdullah','Liaquatabad','Karachi')
insert into customer_table values(1006,'Anfal','Highway','Lahore')


create table order_table(
Or_id int PRIMARY KEY,
Or_item nvarchar(20),
Or_quantity int,
Or_price money,
C_id int REFERENCES customer_table(C_id)
);

insert into order_table values(101,'Mouse',10,1500,1003)
insert into order_table values(102,'Kayboard',20,1000,1006)
insert into order_table values(103,'Graphic Card',12,10000,1005)
insert into order_table values(104,'HDMI Cable',24,800,1004)
insert into order_table values(105,'DPI Cable',23,1200,1002)
insert into order_table values(106,'Motherboard',8,8000,1001)


--View records using where clause

select * from customer_table
where C_name = 'Hamza'

select * from customer_table
where C_id <= 1005 

select * from order_table
where Or_price between 10000 AND 12000

select * from customer_table
where C_city IN('Karachi')


select * from customer_table
where C_city NOT IN('Karachi')


select * from customer_table
where C_name like 'H___a'

select * from customer_table
where C_name like '%a'


select * from customer_table
where C_name like 'H%%a'