create table TABLA_DE_TRABAJO(
    ID_DEL_TRABAJADOR INT NOT NULL PRIMARY KEY,
    HORAS_TRABAJADAS INT NOT NULL,
    NOMBRE_TRABAJADOR VARCHAR2(20)
);

INSERT INTO tabla_de_trabajo
VALUES (4, 2    ,'ALINA');

-- CREAMOS UN ALIAS PARA LAS COLUMNA NOMBRE_TRABAJADOR
SELECT NOMBRE_TRABAJADOR AS NOMBRE FROM tabla_de_trabajo;

-------- Creamos la tabla profesores
create table profesores(
    ID_PROFESORES INT NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR2(20) NOT NULL,
    EDAD NUMBER(2) NOT NULL
);

--Cargamos los datos a la tabla profesores
insert into profesores
values (3, 'Maria', 38);


--- -- Creamos la tabla asignaturas
create table asignaturas(
    ID_ASIGNATURA INT NOT NULL PRIMARY KEY,
    ASIGNATURA VARCHAR2(30) NOT NULL,
    CANTHORAS INT NOT NULL,
    ID_PROFESOR INT NOT NULL
);

--- Cargamos datos a la tabla asignaturas
insert into asignaturas
values (4, 'Calculo', 2, 2);


select * from profesores;
select * from asignaturas;

select asignatura from asignaturas where id_profesor = 1;

-- Ejemplos de select usando subconsultas
select nombre, (select asignatura from asignaturas where id_profesor = aig.id_profesores) from profesores AIG;

