CREATE DATABASE PRUEBA2
go
use PRUEBA2

--create DTree table
create table DTree(
OwnerID bigint not null,
ParentID bigint not null,
DataID bigint not null,
Name nvarchar(255) not null,
SubType bigint null,
CreatedBy bigint null,
CreateDate datetime null,
ModifiedBy bigint null,
ModifiedDate datetime null,
primary key(DataID)
)

--create KUAF table
create table KUAF(
ID bigint not null,
Type bigint not null,
Name nvarchar(255) not null,
UserPWD nvarchar(64) null,
LastName nvarchar (64) null,
MiddleName nvarchar(32)null,
FirstName nvarchar(64) null,
MailAddress nvarchar(255) null,
Title nvarchar(64) null,
OfficeLocation nvarchar(255) null,
primary key(ID)
)

--create DTreeACL table
create table DTreeACL(
OwnerID bigint not null,
DataID bigint not null,
RightID bigint not null,
Permissions int not null,
ACLType tinyint null,
See tinyint null,
)

---insertando valores en tabla DTree
insert into DTree VALUES (534950,-1,-534950,'0123456789 - Cliente 1',849,1000,2/06/2022,1000,2/06/2022);
insert into DTree VALUES (534950,-534950,534952,'01 Documentos Generales',0,1000,03/06/2022,1000,03/06/2022);
insert into DTree VALUES (534950,534952,534953,'02 Legal',0,1000,04/06/2022,1000,04/06/2022);
insert into DTree VALUES (534950,534953,534954,'01 Garantías',0,1000,05/06/2022,1000,05/06/2022);
insert into DTree VALUES (534950,534953,534955,'03 Escrituras e Informacion Accionaria',0,1000,06/06/2022,1000,06/06/2022);
insert into DTree VALUES (534950,534953,534956,'02 Contratos',0,1000,07/06/2022,1000,07/06/2022);
insert into DTree VALUES (534950,534953,534957,'04 Permisos y Licencias',0,1000,08/06/2022,1000,08/06/2022);
insert into DTree VALUES (534950,534952,534958,'03 Financiera',0,1000,09/06/2022,1000,09/06/2022);
insert into DTree VALUES (534950,534958,534959,'01 Estados financieros',0,1000,10/06/2022,1000,10/06/2022);
insert into DTree VALUES(534950,534959,534960,'01 Fiscales',0,1000,11/06/2022,1000,11/06/2022);
insert into DTree VALUES (534950,534959,534961,'02 Auditados',0,1000,12/06/2022,1000,12/06/2022);
insert into DTree VALUES (534950,534959,534962,'03 informacion complementaria',0,1000,13/06/2022,1000,13/06/2022);
insert into DTree VALUES (534950,534958,534963,'02 Analisis Financieros y de Riesgo',0,1000,14/06/2022,1000,14/06/2022);
insert into DTree VALUES (534950,534952,534964,'01 información Básica',0,1000,15/06/2022,1000,15/06/2022);
insert into DTree VALUES (534950,-534950,534965,'02 Correspondencia y otros Antecedentes',0,1000,16/06/2022,1000,16/06/2022);
insert into DTree VALUES (534950,534965,535067,'07 Informes',0,1000,17/06/2022,1000,17/06/2022);
insert into DTree VALUES (534950,535067,535068,'02 Seguimiento de Crédito',0,1000,18/06/2022,1000,18/06/2022);
insert into DTree VALUES (534950,535067,535069,'03 Dictamenes',0,1000,19/06/2022,1000,19/06/2022);
insert into DTree VALUES (534950,535067,535070,'01 De Visita',0,1000,20/06/2022,1000,20/06/2022);
insert into DTree VALUES (534950,534965,535071,'01 Solicitudes',0,1000,21/06/2022,1000,21/06/2022);
insert into DTree VALUES (534950,535071,535072,'02 Productos Pasivos',0,1000,22/06/2022,1000,22/06/2022);
insert into DTree VALUES (534950,535071,535073,'01 Productos Activos',0,1000,23/06/2022,1000,23/06/2022);
insert into DTree VALUES (534950,534965,535074,'02 Buró',0,1000,24/06/2022,1000,24/06/2022);
insert into DTree VALUES (534950,534965,535075,'03 Avalúos',0,1000,25/06/2022,1000,25/06/2022);
insert into DTree VALUES (534950,534965,535076,'06 Correspondencia y Cobro',0,1000,26/06/2022,1000,26/06/2022);
insert into DTree VALUES (534950,534965,535077,'05 Polizas de seguros',0,1000,27/06/2022,1000,27/06/2022);
insert into DTree VALUES (534950,-534950,535078,'04 Transaccionalidad',	0,1000,28/06/2022,1000,28/06/2022);
insert into DTree VALUES (534950,-534950,535079,'03 Gestiones',	0,1000,29/06/2022,1000,29/06/2022);
insert into DTree VALUES (534950,534954,7490074,'Doc1.pdf',144,1000,30/06/2022,1000,30/06/2022);
insert into DTree VALUES (534950,535073,7550548,'Producto Crediticio No.000000',0,1000,01/07/2022,1000,01/07/2022);
insert into DTree VALUES (534950,7550548,7550549,'Doc2.pdf',144,1000,02/07/2022,1000,02/07/2022);
insert into DTree VALUES (534950,534962,7558798,'Doc3.pdf',144,1000,03/07/2022,1000,03/07/2022);
insert into DTree VALUES (534950,535074,7559703,'Doc4.pdf',144,1000,04/07/2022,1000,04/07/2022);
insert into DTree VALUES (534950,535074,7559704,'Doc5.pdf',144,1000,05/07/2022,1000,05/07/2022);
insert into DTree VALUES (534950,535074,7559705,'Doc6.pdf',144,1000,06/07/2022,1000,06/07/2022);
SELECT*FROM DTree

--Insertando valores en tabla KUAF

insert into KUAF VALUES(148859,0,'a.garcia','1$GIz1M9npVaBH9ibO8D','Garcia','NULL','Andrés','correo@bancatlan.sv','EJECUTIVO','La Libertad');
insert into KUAF VALUES(148089,0,'g.lopez','1$tUgmm7WOxSDBH5dCD5','Lopez','NULL','Gerardo','correo@bancatlan.sv','Supervisor','San Miguel');
insert into KUAF VALUES(156269,0,'a.hernandez','1$ZOvvFFceoU6sWsDjuw','Hernandez','NULL','Ana','correo@bancatlan.sv','Cajero','Santa Ana');
insert into KUAF VALUES(147343,0,'j.martinez','1$Ihizua|rmv8ka0Yw6p','Martinez','NULL','Juan','correo@bancatlan.sv','EJECUTIVO','Ahuachapan');
insert into KUAF VALUES(147653,0,'h.perez','1$dU3Etq0gjJd7aP0+rp','Perez','NULL','Hugo','correo@bancatlan.sv','Supervisor','Cuscatlan');
insert into KUAF VALUES(156270,0,'j.gonzalez','1$zB+TJ9jVFyf1uFAPWj','Gonzalez','NULL','Juan','correo@bancatlan.sv','Asesor','Cabañas');
insert into KUAF VALUES(156271,0,'s.sanchez','1$85snhnNwuLXfv0PvJo','Sanchez','NULL','Sara','correo@bancatlan.sv','Supervisor','San Salvador');
insert into KUAF VALUES(147654,0,'k.morales','1$WKJOX|9uMBapeik+NA','Morales','NULL','Karen','correo@bancatlan.sv','Asesor','San Salvador');
insert into KUAF VALUES(147655,0,'a.ramos','1$ud5OODrj84RMGXJPA3','Ramos','NULL','Alejandro','correo@bancatlan.sv','Asesor','San Salvador');
SELECT*FROM KUAF

--Insertando valores en tabla DTreeACL

insert into DTreeACL VALUES(534950,534952,100,128,1,0);
insert into DTreeACL VALUES(534950,534952,999,16777215,2,4);
insert into DTreeACL VALUES(534950,534952,-1,128,3,0);
insert into DTreeACL VALUES(534950,534952,-2,16777215,4,4);
insert into DTreeACL VALUES(534950,534952,2001,16777215,0,4);
insert into DTreeACL VALUES(534950,534952,147376,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147572,118923,0,4);
insert into DTreeACL VALUES(534950,534952,147573,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147574,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147677,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147678,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147683,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147800,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147898,36995,0,2);
insert into DTreeACL VALUES(534950,534952,147979,36995,0,2);
insert into DTreeACL VALUES(534950,534952,148018,36995,0,2);
insert into DTreeACL VALUES(534950,534952,148020,36995,0,2);
insert into DTreeACL VALUES(534950,534952,148115,36995,0,2);
insert into DTreeACL VALUES(534950,534952,148116,36995,0,2);
SELECT*FROM DTreeACL

--Consulta 1 Mostrar los documentos que tiene el expediente de un cliente.

USE PRUEBA
go
SELECT Name 
from DTree 
where SubType=144 and OwnerID=534950
go

--Consulta 2 Mostrar los usuarios que tienen acceso a ver el contenido del expediente del cliente.

use PRUEBA
go
select*from DTreeACL
where OwnerID=534950 and See=2
go

--Consulta 3 Mostrar los usuariosque tienen acceso para eliminar dentro del expediente cliente.

use PRUEBA
go
select*from DTreeACL
where ownerID=534950 and see=4
go