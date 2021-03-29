create database veterinaria;
use veterinaria;

create table mascotas (
	id int(10) not null,
    nombre varchar(10) not null,
    id_duenyo int(10) not null,
    servicio varchar(15) not null
);

create table personas (
	id int(10) not null,
    nombre varchar(15) not null,
    apellido varchar(15) not null,
    cod_zip varchar(20) not null,
    tlf numeric(10) not null
);

create table direcciones (
	zip varchar(20) not null,
    nombre_zona varchar(15) not null,
    ruta varchar(10) not null
);


-- Agrega una clave primaria al campo id en las tablas mascotas y personas
alter table mascotas add primary key(id);
alter table personas add primary key(id);

-- Agrega un foreign key al campo id_duenyo en la tabla mascotas 
-- que referencie al campo id en la table personas
alter table mascotas 
add constraint fk_id_duenyo 
foreign key(id_duenyo) references personas(id);

-- Agrega un foreign key al campo cod_zip en la tabla personas 
-- que referencie al campo zip en la table direcciones
alter table personas 
add constraint fk_cod_zip
foreign key(cod_zip) references direcciones(zip);

-- Agrega una columna llamada email en la tabla personas
alter table personas
add column email varchar(20) not null;

-- Agrega una unique constraint en la columna email de la tabla personas
alter table personas
add constraint u_email unique(email);

-- Cambia el nombre a la columna nombre en la tabla mascotas por primer_nombre
alter table mascotas
change nombre primer_nombre varchar(15) not null;

-- Cambia el tipo de dato a la columna ruta en la tabla direcciones por char(12)
alter table direcciones
modify ruta char(12);

