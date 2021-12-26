create table customers(
    customer_id number(10) not null,
    customer_name varchar2(50) not null,
    city varchar2(50),
    
    constraint pk_customer primary key(customer_id)
);

create table newcustomers as(select * from customers);

alter table customers add customer_uer varchar2(50);
alter table customers add(customer_type varchar2(50), customer_address varchar2(50));
alter table customers modify customer_name varchar2(100); -- change the column type
alter table customers rename column customer_uer to customer_username; -- change the column name

desc customers;

------------------------------------------------------ Insert data from the table customers
insert into customers (customer_id, customer_name, city) values (5, 'Liz', 'Luque');

------------------------------------------------------ View
create view Luque_City as
select * from customers
where city = 'Luque';


select * from Luque_City;

------- Modify View
create or replace view Luque_City as
select * from customers
where city = 'Luque' And customer_name='Anahi';

----- Delete View
drop view Luque_City;