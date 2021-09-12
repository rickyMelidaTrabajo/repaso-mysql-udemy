create database escuela;
use escuela;

create table materia (
	clave_m int auto_increment,
    nom_m varchar(50) not null,
    cred varchar(50) not null,
	
    primary key(clave_m)
);

create table profesor(
	clave_p int auto_increment,
    nom_p varchar(50) not null,
    dir_p varchar(50) not null,
    tel_p bigint not null,
    hor_p varchar(20) not null,
    
    primary key(clave_p)
);

create table carrera (
	clave_c int auto_increment,
    nomb_c varchar(50) not null,
    durac_c float not null,
    
    primary key(clave_C)
);

create table alumno(
	matr_alu int auto_increment,
    nomb_alu varchar(50) not null,
    edad_alu int(2) not null,
    sem_alu varchar(10) not null,
    gen_alu varchar(20) not null,
    
    clave_c1 int not null,
    
    primary key(matr_alu),
    foreign key(clave_c1) references carrera(clave_c)
);


-- Alumno Profesor
create table alu_pro(
	matr_alu1 int not null,
    clave_p1 int not null,
    
    foreign key(matr_alu1) references alumno(matr_alu),
    foreign key(clave_p1) references profesor(clave_p)
);


-- Materia - Alumno
create table mat_alu(
	clave_m1 int not null,
    matr_alu2 int not null,
    
    foreign key(clave_m1) references materia(clave_m)
);


-- Materia Profesor
create table mat_pro(
	clave_m2 int not null,
    clave_p2 int not null,
    
    foreign key(clave_m2) references materia(clave_m),
    foreign key(clave_p2) references profesor(clave_p)
);

insert into carrera(nomb_C, durac_c) 
values  ('Ing. Sistemas', 5),
		('Lic. Adminitrascion de Empresas' , 4.0),
        ('Lic. Analisis de Sistemas', 4.5),
        ('Ing Ambiental', 5),
        ('Tecnico Superior en Mecatronica', 2);


insert into profesor(nom_p, dir_p, tel_p, hor_p)
values ('Ranulfo Oviedo', 'San Lorenzo', 12345, 'Manhana'),
	   ('Derlis Benitez', 'Luque', 6789, 'Tarde'),
       ('Ruben Caceres', 'Villa Elisa', 98740, 'Noche'),
       ('Ruben Paredes', 'San Lorenzo', 45612, 'Manhana'),
       ('Jose Esquivel', 'Itagua', 121558, 'Tarde');
       

insert into alumno(nomb_alu, edad_alu, sem_alu, gen_alu, clave_c1)
values ('Ricardo Melida', 29, 'Segundo semestre', 'Masculino', 5),
	   ('Anahi Encina', 25, 'Cuarto semestre', 'Femenino', 3),
       ('Luis Orue', 26, 'Quinto semestre', 'Masculino', 1),
       ('Fernanda Ferreira', 27, 'Octavo Semestre', 'Femenino', 2),
       ('Jose Ezquivel', 33, 'Sexto Semestre', 'Masculino', 4);
       

insert into materia(nom_m, cred)
values ('Programacion 1', 'Hay Credito'),
	   ('Ingenieria de Control', 'Hay Credito'),
       ('Resistencia de Materiales', 'No hay Credito'),
       ('Redes II', 'No hay Credito'),
       ('Matematicas I', 'Hay Credito');
       
insert into alu_pro
values (1, 5), (2, 4), (3, 3), (4, 2), (5, 1);


insert into mat_alu
values (1, 5), (2, 4), (3, 3), (4, 2), (5, 1);

insert into mat_pro
values (1, 5), (2, 4), (3, 3), (4, 2), (5, 1);


select nomb_alu, nomb_c from alumno inner join carrera on alumno.clave_c1 = carrera.clave_c;

select nomb_alu, nom_p from alumno 
inner join alu_pro on alumno.matr_alu = alu_pro.matr_alu1
inner join profesor on alu_pro.clave_p1 = profesor.clave_p;

select * from profesor;
update profesor set nom_p='Camilo Barreto', dir_p='Luque' where clave_p=5;