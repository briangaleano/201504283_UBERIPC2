CREATE TABLE HOJA1;
USE HOJA1;

CREATE TABLE Usuario
(
	ID_Usuario INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre nvarchar(50) not null,
	Apellido nvarchar(50) NOT NULL
);

CREATE TABLE Tipo_de_Servicio
(
	ID_Tipo_de_Servicio INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Nombre_Servicio nvarchar(100) NOT NULL
);

CREATE TABLE Detalle_Servicio
(
	ID_Detalle_Servicio INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Direccion_Llegada nvarchar(100) NOT NULL,
	Direccion_Final nvarchar(100) NOT NULL,
	Costo money NOT NULL,
	ID_Usuario INT FOREIGN KEY REFERENCES Usuraio(ID_Usuario) NOT NULL,
	ID_Tipo_Servicio INT FOREIGN KEY REFERENCES Usuraio(ID_Usuario) NOT NULL
);

ALTER TABLE Tipo_Servicio ADD Descripcion_del_Servicio nvarchar(500);
Alter Table Detalle_Servicio ADD Fecha_Solicitud date;

INSERT INTO Usuario Values ('Brian','Galeano');
INSERT INTO Usuario Values ('Sofia','Cordova');
INSERT INTO Usuario Values ('Jose','Ariel');

INSERT INTO Tipo_de_Servicio Values ('UBERX','Capacidad 6 pasajeros');
INSERT INTO Tipo_de_Servicio Values ('UBER RUSH','Mensajero con bicicleta');
INSERT INTO Tipo_de_Servicio Values ('UBER BLACK','Viaje Premium');

INSERT INTO Detalle_Servicio Values ('11 calleb','15 zona 10',25.52,01,02);
INSERT INTO Detalle_Servicio Values ('11 calleb','15 zona 10',25.52,02,03);
INSERT INTO Detalle_Servicio Values ('11 calleb','15 zona 10',25.52,03,01);