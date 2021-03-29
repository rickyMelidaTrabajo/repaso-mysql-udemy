create database usuarios;
use usuarios;

create table usuario(
	id int(10) not null ,
    usuario varchar(10) not null,
    pass varchar(10) not null
);

create table roles (
	id_rol int(10) auto_increment,
    tipo varchar(10) not null,
    id_rol1 int(10) not null,
    
    primary key(id_rol)
);

-- Describimos las columnas de la tabla y sus distintas caracteristicas
desc usuario;
describe usuario;

-- Agregamos una columna
alter table usuario
add column rol varchar(10) not null;

-- Agregamos clave primaria
alter table usuario
add primary key(id);

-- Eliminamos la clave primaria
alter table usuario
drop primary key;

-- Agregamos clave foranea
alter table roles
add constraint fk_id_rol1
foreign key(id_rol1) references usuario(id); 

-- Eliminamos clave foranea
alter table roles
drop foreign key fk_id_rol1;

-- Agregar Unique constraint
-- u_usuario seria el nombre de restriccion
alter table usuario
add constraint u_usuario unique(usuario);

-- Eliminamos unique constraint
alter table usuario
drop index u_usuario;

-- Cambiar nombre de una columna
alter table usuario
change pass contrasenya varchar(15);

-- Cambiar el tipo de dato de una columna
alter table usuario
modify usuario char(5);


-- Eliminamos una columna
alter table usuario
drop column rol;
