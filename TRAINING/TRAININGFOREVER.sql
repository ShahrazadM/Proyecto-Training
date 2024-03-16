-- trabajo realizado por Ruben Riquelme, Nayareth sepulveda, Frasiel Camp y Scherezade 
CREATE DATABASE training;
USE training;

CREATE TABLE operators (
    run VARCHAR(20) PRIMARY KEY,
    name VARCHAR(50),
    last_name VARCHAR(50),
    direction VARCHAR(100),
   email VARCHAR(100),
    date_created  DATETIME
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
     date_created DATETIME
);

CREATE TABLE training (
    course_code INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    timetable VARCHAR(50),
    cost_of_completion DECIMAL(10, 2),
    date_of_completion DATE
);

-- cambio de nombre direction (estaba mal escrito) por address 
ALTER TABLE training.operators CHANGE COLUMN direction address VARCHAR(100);

-- llenado de tabla operators
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('17845236', 'Maria', 'Martinez', 'Juan Martinez 568', 'maria@gmail.com', '2024-01-02 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('18521474', 'Mario', 'Muñoz', 'Martinez 562', 'mario@gmail.com', '2024-01-12 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('19114213', 'Hugo', 'Galdame', 'Quilpue 553', 'hugogaldame@gmail.com', '2024-01-18 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('19125589', 'helen', 'Riquelme', 'Quilpue 853', 'helenri@gmail.com', '2024-01-18 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('19221568', 'Claudia', 'Capetillo', 'Viña del mar 485', 'claudiaca@gmail.com', '2024-01-19 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('19558963', 'Alejandro', 'Ramirez', 'Viña del mar 85', 'aleramirez@gmail.com', '2024-01-19 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('19852258', 'Carla', 'Flores', 'Quilpue 553', 'carlaf@gmail.com', '2024-01-16 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('19854712', 'Jaime', 'Gonzalez', 'Quilpue 223', 'jaimego@gmail.com', '2024-01-15 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('20235898', 'Javiera', 'Campos', 'Santa Maria 805', 'javicampos@gmail.com', '2024-01-13 00:00:00');
INSERT INTO operators (run, name, last_name, address, email, date_created) VALUES ('20365789', 'Ignacio', 'Jara', 'Santa Laura 583', 'ignacio@gmail.com', '2024-01-11 00:00:00');

-- llenado de tabla users 
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Manuel', 'Gonzalez', 'manuelgonza@gmail.com', '958741478', '2024-01-08 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Patricia', 'Vargas', 'patriciav@gmail.com', '998574123', '2024-01-13 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Hector', 'Venegas', 'hectorv@gmail.com', '994125638', '2024-02-11 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Carmen', 'Campos', 'carmencampos@gmail.com', '997414789', '2024-03-09 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Daniela', 'Alvarado', 'danielaa@gmail.com', '960502723', '2024-02-18 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Julio', 'Torres', 'juliot@gmail.com', '958741236', '2023-12-20 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Julia', 'Campillay', 'juliaca@gmail.com', '987423698', '2023-12-21 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Alejandra', 'Miranda', 'alejandraa@gmail.com', '933915510', '2024-01-21 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Isabella', 'Vega', 'isabellaaa@gmail.com', '991341998', '2024-01-25 00:00:00');
INSERT INTO users (name, last_name, email, phone, date_created) VALUES ('Carolina', 'Farias', 'carolinafa@gmail.com', '965825479', '2024-01-25');

-- llenado tabla training
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en contraseñas', '09:00:00', '150000.00', '2024-02-28');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en facebook', '09:00:00', '200000.00', '2024-02-29');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en instagram', '19:00:00', '200000.00', '2024-02-29');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en telegram', '20:00:00', '220000.00', '2024-02-29');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en whatsapp', '20:00:00', '220000.00', '2024-02-20');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en whatsapp', '13:00:00', '180000.00', '2024-02-20');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en bancos', '11:00:00', '190000.00', '2024-02-20');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en notion', '12:00:00', '120000.00', '2024-02-19');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en sql', '12:00:00', '120000.00', '2024-02-12');
INSERT INTO training (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en vs code', '12:00:00', '120000.00', '2024-02-22');

-- agregue el campo salario al operador y registre salarios a los operadores ya registrados
ALTER TABLE training.operators ADD salario decimal (10,4);

-- cambio nombre de tabla training por Cybersecurity
USE training;
ALTER TABLE Cybersecurity RENAME TO users;

-- cambio de nombre de tabla de training a Cybersecurity 
ALTER TABLE training RENAME TO Cybersecurity;


-- insertar registro de salarios a operadores ya registrados
UPDATE operators SET salario = 500000 WHERE run='17845236';
UPDATE operators SET salario = 500000 WHERE run='18521474';
UPDATE operators SET salario = 500000 WHERE run='19114213';
UPDATE operators SET salario = 500000 WHERE run='19125589';
UPDATE operators SET salario = 500000 WHERE run='19221568';
UPDATE operators SET salario = 500000 WHERE run='19558963';
UPDATE operators SET salario = 500000 WHERE run='19852258';
UPDATE operators SET salario = 500000 WHERE run='19854712';
UPDATE operators SET salario = 500000 WHERE run='20235898';
UPDATE operators SET salario = 500000 WHERE run='20365789';

-- inserte 3 capacitaciones 
INSERT INTO Cybersecurity (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en redes sociales', '09:00:00', '180000.00', '2024-03-10');
INSERT INTO Cybersecurity (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en dispositivos móviles', '14:00:00', '200000.00', '2024-03-15');
INSERT INTO Cybersecurity (name, timetable, cost_of_completion, date_of_completion) VALUES ('seguridad en la nube', '16:00:00', '220000.00', '2024-03-20');

-- insertar 3 operadores 
INSERT INTO operators (run, name, last_name, address, email, date_created, salario) VALUES ('14252793', 'Francisco', 'Correa', 'Simon Bolivar 357', 'francisco@gmail.com', '2024-02-08', '550000');
INSERT INTO operators (run, name, last_name, address, email, date_created, salario) VALUES ('17414880', 'Francisca', 'Concha', 'Simon Bolivar 417', 'francisca@gmail.com', '2024-02-12', '550000');
INSERT INTO operators (run, name, last_name, address, email, date_created, salario) VALUES ('16881230', 'Macarena', 'Toro', 'Bolivar 37', 'macarena@gmail.com', '2024-01-03', '550000');

-- ¿Cuál es la capacitación más costosa?
SELECT * FROM cybersecurity WHERE cost_of_completion= (SELECT MAX(cost_of_completion) FROM cybersecurity);

-- ¿Cuál es el operador con menor salario?
SELECT * FROM operators WHERE salario= (SELECT MIN(salario) FROM operators);

-- Seleccione las capacitaciones más costosas que el promedio.
SELECT * FROM cybersecurity WHERE cost_of_completion > (SELECT AVG(cost_of_completion) FROM cybersecurity);

-- consulta capacitaciones menos costosas que el promedio
SELECT * FROM cybersecurity WHERE cost_of_completion < (SELECT AVG(cost_of_completion) FROM cybersecurity);

-- Cree una tabla con las capacitaciones menos costosas que el promedio. La tabla debe tener por nombre Capacitaciones Económicos
CREATE TABLE Capacitaciones_Económicas AS SELECT * FROM cybersecurity WHERE cost_of_completion < (SELECT AVG(cost_of_completion) FROM cybersecurity);
/*agregando campos de cantidad minima estudiantes y aportes publicos*/

-- agregando campos de cantidad minima estudiantes y aportes publicos
ALTER TABLE capacitaciones_económicas 
ADD COLUMN minimun_numbers_students INT,
ADD COLUMN Public_Contributions DECIMAL(10, 2);

/* RENOMBRE DE COLUMNA "Costo realizacion" DE LA TABLA capacitaciones_economicas . EL NOMBRE NUEVO es "COSTO EFECTIVO*/
ALTER TABLE capacitaciones_económicas CHANGE COLUMN cost_of_completion efective_coste DECIMAL(10, 2);


/*  Se nos pide que a costo_efectivo le restemos los datos ingresdos en Public_contribution  " para ello realizamos los siguientes pasos: Primero:( agregamos valores a aportes publicos primero),
observacion: dado que el seguro de actualizacion puede generar error, lo desactivamos temporalmente luego agregar valores a aportes publicos*/
SET SQL_SAFE_UPDATES = 0;

-- Segundo agregamos valores, en este caso agregamos 200.000 a todas las filas de la columna Public_Contributions
UPDATE capacitaciones_económicas 
SET Public_Contributions = 200.00;
/* Tercero: "Ahora podemos conseguir la diferencia de efective_coste  con Public_Contributions" ☻☻☻#carita feliz :)*/
SELECT efective_coste - Public_Contributions AS efective_coste_diferencia
FROM capacitaciones_económicas;
/* IMPORTANTE " ☺☺☺☺Recuerda restablecer el modo seguro de actualización después de completar tus operaciones☻☻☻*/
SET SQL_SAFE_UPDATES = 1;  -- los datos de efective_coste volveran a a su estado original despues de activar el modo seguro*/



/* SOLO si quieres hacer la segunda opcion de hallar la diferencia de efective_coste : Primero borra los  datos de Public_Contributions  que colocamos anteriormente con el siguiente codigo..*/
SET SQL_SAFE_UPDATES = 0;        -- quita seguridad
	-- borrando datos de public_Contribution
update capacitaciones_económicas  
SET Public_Contributions = null; 
SET SQL_SAFE_UPDATES = 1;        -- devuelve seguridad

-- Ahora  que ya borramos los datos probamos la segunda opcion!!
-- TEN en cuenta que sino ejecutaste la primera opcion de hallar la respuesta no sera necesario borrar
-- nada de Public_Contributions porque dicho contenido  no existira en Public_Contributions --

/* SEGUNDO METODO PARA HALAR RESPUESTA A:"a costo_efectivo restar Aportes publicos "*/
-- oviamente antes desactivamos la seguridad temporarmente con SET SQL_SAFE_UPDATES  ya aprendimos a hacerlo!

SET SQL_SAFE_UPDATES = 0;   -- quita seguridad

-- ingresamos distintos datos a Public_Contributions ejecutar de uno en uno !!
UPDATE capacitaciones_económicas 
SET Public_Contributions = 100.00
WHERE course_code = 1;
UPDATE capacitaciones_económicas 
SET Public_Contributions = 200.00
WHERE course_code = 8;
UPDATE capacitaciones_económicas 
SET Public_Contributions = 300.00
WHERE course_code = 9;
UPDATE capacitaciones_económicas 
SET Public_Contributions = 200.00
WHERE course_code = 10;
-- mostrando En la columna "efective_coste " la diferencia de (efective_coste - Public_Contributions) --
UPDATE Capacitaciones_Económicas 
SET efective_coste = efective_coste - Public_Contributions;
-- OJO RECORDAR QUE ES IMPORTANTE DEVOLVER LA SEGURIDAD--
SET SQL_SAFE_UPDATES = 1;   -- devuelve seguridad


/* ACTUALIZAR 5 registros en la tabla CURSOS (Cyberseguriry)*/

UPDATE cybersecurity SET cost_of_completion = 300000.00 WHERE course_code='1';
UPDATE cybersecurity SET cost_of_completion = 400000.00 WHERE course_code='2';
UPDATE cybersecurity SET cost_of_completion = 500000.00 WHERE course_code='3';
UPDATE cybersecurity SET cost_of_completion = 600000.00 WHERE course_code='4';
UPDATE cybersecurity SET cost_of_completion = 80000.00 WHERE course_code='5';

/* ACTUALIZAR #3 OPERADORES*/

UPDATE operators SET salario = 100000 WHERE run='19854712';
UPDATE operators SET salario = 100000 WHERE run='20235898';
UPDATE operators SET salario = 100000 WHERE run='20365789';

/*--- mi ejercio  personal renombrando  columna de training..  porque lo cambie por errror # arreglando la embarrada que deje jaajajjaaj*/
/* Renonbre la columna "Costo_efectivo a su nombre original cost_of_completion "*/
ALTER TABLE training CHANGE COLUMN Costo_efectivo cost_of_completion DECIMAL(10, 2);