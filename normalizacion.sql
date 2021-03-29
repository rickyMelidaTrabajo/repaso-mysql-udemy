create database normalizacion;
use normalizacion;


-- -------------------------------------- PRIMERA FORMA NORMAL -----------------------------
create table ejemplo1FN (
	id int(10) primary key auto_increment,
    alumno varchar(20) not null,
    grado int(10) not null,
    materia varchar(20) not null
);

insert into ejemplo1FN(alumno, grado, materia)
values("Giulia Vallejo", 8, "Castellano"), -- Repetido
	  ("Jose Hernandez", 9, "Matematicas"),
      ("Giulia Vallejo", 8, "Castellano"), -- Repetido
      ("Nazareth Guayaba", 11, "Quimica"),
      ("Hector Fonsi", 11, "Historia"),
      ("Hector Fonsi", 11, "Quimica"),
      ("Elvira Castro", 10, "Matematicas"),
      ("Elvira Castro", 10, "Castellano"),
      ("Ness Truman", 9, "Historia"),
      ("Ness Truman", 9, "Quimica");
      


-- -------------------------------------- SEGUNDA FORMA NORMAL -----------------------------
create table ejemplo2FN (
	id int(10) primary key auto_increment,
    alumno varchar(20) not null,
    materia varchar(20) not null,
    nota char(5) not null,
    edad numeric(5) not null
);

insert into ejemplo2FN(alumno, materia, nota, edad)
values("Jose Hernandez", "Matematicas", "A", 16),
	  ("Giulia Vallejo", "Castellano", "B", 15),
      ("Nazareth Guayaba", "Quimica", "A", 17),
      ("Hector Fonsi", "Historia", "D", 16),
      ("Hector Fonsi", "Quimica", "C", 16),
      ("Elvira Castro", "Castellano", "B", 17),
      ("Elvira Castro", "Matematicas", "A", 17),
      ("Ness Truman", "Quimica", "C", 15),
      ("Ness Truman", "Historia", "C", 15);
      
-- -----Normalizamos los datos en dos tablas
create table tabla_1_2FN (
	id int(10) primary key auto_increment,
    alumno varchar(20) not null,
    materia varchar(20) not null,
    nota char(5) not null
);


insert into tabla_1_2FN(alumno, materia, nota)
values("Jose Hernandez", "Matematicas", "A"),
	  ("Giulia Vallejo", "Castellano", "B"),
      ("Nazareth Guayaba", "Quimica", "A"),
      ("Hector Fonsi", "Historia", "D"),
      ("Hector Fonsi", "Quimica", "C"),
      ("Elvira Castro", "Castellano", "B"),
      ("Elvira Castro", "Matematicas", "A"),
      ("Ness Truman", "Quimica", "C"),
      ("Ness Truman", "Historia", "C");
      

create table tabla_2_2FN (
	id int(10) primary key auto_increment,
    alumno varchar(20) not null,
    edad numeric(5) not null
);

insert into tabla_2_2FN(alumno, edad)
values("Jose Hernandez", 16),
	  ("Giulia Vallejo", 15),
      ("Nazareth Guayaba", 17),
      ("Hector Fonsi", 16),
      ("Elvira Castro", 17),
      ("Ness Truman", 15);
      
      
-- -------------------------------------- TERCERA FORMA NORMAL -----------------------------
create table ejemplo3FN (
	id int(10) not null auto_increment primary	key,
    materia varchar(10) not null,
    anyo int(4) not null,
    estudiante_estrella varchar(20) not null,
    edad_estudiante_estrella date not null
);


insert into ejemplo3FN(materia, anyo, estudiante_estrella, edad_estudiante_estrella)
				values("Matematicas", 2014, "Jose Marti", "1999-04-21"),
					  ("Fisica", 2015, "Guilia Vallejo", "1998-09-12"),
                      ("Quimica", 2015, "Alejo Carpetier", "2000-01-02"),
                      ("Matematicas", 2015, "Jorge Borges", "1999-03-24"),
                      ("Biologia", 2016, "Teresa Torres", "2000-05-10");



-- -----Normalizamos los datos en dos tablas
create table tabla_1_3FN (
	id int(10) auto_increment primary key,
    materia varchar(20) not null,
    anyo varchar(10) not  null,
    estudiante_estrella varchar(20) not null
);

insert into tabla_1_3FN(materia, anyo, estudiante_estrella) 
				values ("Matematicas", 2014, "Jose Marti"),
					  ("Fisica", 2015, "Guilia Vallejo"),
					  ("Quimica", 2015, "Alejo Carpetier"),
					  ("Matematicas", 2015, "Jorge Borges"),
					  ("Biologia", 2016, "Teresa Torres");


create table tabla_2_3FN (
	id int(10) auto_increment primary key,
    estudiante_estrella varchar(20) not null,
    edad date not null
);

insert into tabla_2_3FN(estudiante_estrella, edad)
				values("Jose Marti", "1999-04-21"),
					  ("Guilia Vallejo", "1998-09-12"),
                      ("Alejo Carpetier", "2000-01-02"),
                      ("Jorge Borges", "1999-03-24"),
                      ("Teresa Torres", "2000-05-10");
