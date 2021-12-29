create table empleados (
    N_EMPLEADO  INT NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR2(10) NOT NULL,
    SUELDO INT NOT NULL,
    P_EXTRA INT NOT NULL
);

INSERT INTO EMPLEADOS(N_EMPLEADO,NOMBRE,SUELDO, P_EXTRA)
VALUES (095, 'ANDRES', 1200, 800);


-- Suma del sueldo y la paga extra
select sueldo + p_extra from empleados;

-- Resta del sueldo y la paga extra
select sueldo - p_extra from empleados;

-- Concatenacion del nombre con el sueldo
select nombre || sueldo from empleados;

-- Concatenacion del nombre con el sueldo con espacios en blanco en el medio
select nombre || ' ' ||sueldo from empleados;

-- Todos los empleados que sus nombres terminen en O
select * from empleados where nombre like('%O');


-- Todos los empleados que sus nombres comiencen con la letras A
select * from empleados where nombre like('A%');


-- Todos los empleados que sus nombres contengan la letra N
select * from empleados where nombre like('%N%');


-- Todos los empleados que sus nombres comiencen con la letras A y terminen con la letra S
select * from empleados where nombre like('A%S');


-- Todos los empleados que sus nombres comiencen con cualquier letra pero termine con NA
-- A diferencia del % el _ equivale solo a un caracter y el % a un grupo de  caracter
select * from empleados where nombre like('_NA');


-- Todos los empleados que sus nombres comiencen con JULI y termine con cualquier letr
select * from empleados where nombre like('JULI_');


-- Todos los empleados donde el numero de empleado este entre 1 y 100
select * from empleados where n_empleado between 0 and 100;


-- Todos los empleados que sus sueldos sean igual a 2000 o  3000
select * from empleados where sueldo in(2000, 3000);


-- Todos los empleados que sus nombres no sean nulos
select * from empleados where n_empleado is not null;



--Ordenamos los nombres de de acuerdo a los nombre de forma ascendente
select * from empleados order by nombre asc;

--Ordenamos los nombres de de acuerdo a los nombre de forma descendente
select * from empleados order by nombre desc;


-- MANEJO DE CAMPOS REPETIDOS
insert into empleados values(158, 'ANDRES', 5000, 2500);

-- Devolvemos todos los valores y solo muestra un vez el campo repetido
select distinct nombre from empleados;

-- La suma total de todos los sueldos
select sum(sueldo) from empleados;


--Cantidad de registros que tiene una tabla
select count(sueldo) from empleados;