drop database if exists tienda;
create database tienda;
use tienda;

create table fabricante (
	codigo int unsigned auto_increment primary key,
    nombre varchar(100) not null
);

create table producto (
	codigo int unsigned auto_increment primary key,
    nombre varchar(100) not null,
    precio double not null,
    codigo_fabricante int unsigned not null,
    foreign key(codigo_fabricante) references fabricante(codigo)
);


insert into fabricante(nombre) 
values				  ('Asus'),
                      ('Lenovo'),
					  ( 'Hewlet-Packard'),
                      ('Samsung'),
                      ('Seagate'),
                      ('Crucial'),
                      ('Gigabyte'),
                      ('Huawei'),
                      ('Xiomi');
			
	
insert into producto(nombre, precio, codigo_fabricante)
values 				('Disco Duro Sata3 1TB', 86.99, 5),
					('Memoria RAM DDR4 8GB', 120, 6),
                    ('Disco SSD 1TB', 150.99, 4),
                    ('GeForce GTX 1050Ti', 185, 7),
                    ('GeForce GTX 1080 Xtreme', 755, 6),
                    ('Monitor 24 LED Full HD', 202, 1),
                    ('Monitor 27 LED Full HD', 245.99, 1),
                    ('Portatil Yoga 520', 559, 2),
                    ('Portatil Ideapd 320', 444, 2),
                    ('Impresora HP Deskject 3720', 59.99, 3),
                    ('Impresora HP Laserjet Pro M26nw', 180, 3);
                    
select nombre, nombre from producto inner join ;

alter table fabricante
change codigo codigo_fab int unsigned auto_increment primary key;