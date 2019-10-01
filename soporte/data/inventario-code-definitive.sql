

CREATE TABLE  monitor  (
   ID_MONITOR  varchar(22) NOT NULL,
   MARCA  varchar(20) NOT NULL,
   MODELO  varchar(15) NOT NULL,
   SERIE  varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  mouse  (
  ID_MOUSE varchar(22) NOT NULL,
   MARCA  varchar(20) NOT NULL,
   MODELO  varchar(15) NOT NULL,
   SERIE  varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  no_brake  (
  ID_NOBRAKE varchar(22) NOT NULL,
   MARCA  varchar(20) NOT NULL,
   MODELO  varchar(15) NOT NULL,
   SERIE  varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  bocinas  (
   ID_BOCINA  varchar(22) NOT NULL,
   MARCA  varchar(20) NOT NULL,
   MODELO  varchar(15) NOT NULL,
   SERIE  varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  cargador  (
   ID_CARGADOR  varchar(22) NOT NULL,
   MARCA  varchar(20) NOT NULL,
   MODELO  varchar(15) NOT NULL,
   SERIE  varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  teclado  (
   ID_TECLADO  varchar(22) NOT NULL,
   MARCA  varchar(20) NOT NULL,
   MODELO  varchar(15) NOT NULL,
   SERIE  varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE  encargado  (
   ID_ENCARGADO  varchar(22) NOT NULL,
   NOMBRE  varchar(20) NOT NULL,
   APELLIDOP  varchar(20) NOT NULL,
   APELLIDOM  varchar(20) NOT NULL,
   DIRECCION  varchar(60) NOT NULL,
   AREA  varchar(70) NOT NULL,
   PISO  varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  equipo  (
   ID_REGISTROE  varchar(22) NOT NULL,
   TIPOSO  varchar(15) NOT NULL,
   CONFIGURACION  varchar(50) NOT NULL,
   RAM  varchar(30) NOT NULL,
   TIPO  varchar(10) NOT NULL,
   MODELO  varchar(20) NOT NULL,
   MARCAEQUIPO  varchar(20) NOT NULL,
   SERIEEQUIPO  varchar(35) NOT NULL,
   MACADDRESS  varchar(20) NOT NULL,
   DIRECCIONIP  varchar(20) NOT NULL,
   RESPONSIVA1  bit(2) NOT NULL,
   RESPONSIVA2  bit(2) NOT NULL,
   OBSERVACIONES  varchar(60) NOT NULL,
   ID_TECLADO  varchar(22) NOT NULL,
   ID_MOUSE  varchar(22) NOT NULL,
   ID_NOBRAKE varchar(22) NOT NULL,
   ID_BOCINA  varchar(22) NOT NULL,
   ID_MONITOR  varchar(22) NOT NULL,
   ID_ENCARGADO  varchar(22) NOT NULL,
   ID_CARGADOR varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `equipo` ADD INDEX( `ID_TECLADO`, `ID_MOUSE`, `ID_NOBRAKE`, `ID_BOCINA`, `ID_MONITOR`, `ID_ENCARGADO`, `ID_CARGADOR`);

CREATE TABLE  usuario  (
   ID_USUARIO  varchar(22) NOT NULL,
   NOMBRE  varchar(20) NOT NULL,
   APELLIDOP  varchar(20) NOT NULL,
   APELLIDOM  varchar(20) NOT NULL,
   DIRECCION  varchar(60) NOT NULL,
   ID_REGISTROE  varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  reporte  (
   ID_REPORTE  varchar(22) NOT NULL,
   ID_USUARIO  varchar(22) NOT NULL,
   ASUNTO  varchar(35) NOT NULL,
   DESCRPCION  varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  reporte_administrador  (
   ID_REPORTEADMIN  varchar(22) NOT NULL,
   FECHA_INICIO  datetime NOT NULL,
   ASUNTO  varchar(30) NOT NULL,
   DESCRIPCION  varchar(60) NOT NULL,
   TIPO_REPORTE  varchar(20) NOT NULL,
   TIPO_SEVICIO  varchar(20) NOT NULL,
   PROVEEDOR_SERVICIO  varchar(25) NOT NULL,
   SOLUCION  varchar(25) NOT NULL,
   ACTIVIDAD  varchar(20) NOT NULL,
   NOMBRE  varchar(20) NOT NULL,
   APELLIDOP  varchar(25) NOT NULL,
   APELLIDOM  varchar(25) NOT NULL,
   ID_REGISTROE  varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


 -------------------------------------------------------BOCINAS
  
INSERT INTO `bocinas` (`ID_BOCINA`, `MARCA`, `MODELO`, `SERIE`) VALUES ('1 PC', 'DELL', 'AX210', 'CN0R126K482200C701KZ');
INSERT INTO `bocinas` (`ID_BOCINA`, `MARCA`, `MODELO`, `SERIE`) VALUES ('2 PC', 'DELL', 'AX210', 'CN0R126K482200C600TT');
INSERT INTO `bocinas` (`ID_BOCINA`, `MARCA`, `MODELO`, `SERIE`) VALUES ('3 PC', 'DELL', 'AX210', 'CN0R126K4822014I011F');
INSERT INTO `bocinas` (`ID_BOCINA`, `MARCA`, `MODELO`, `SERIE`) VALUES ('4 PC', 'DELL', 'AX210', 'CN0R126K482200CF032U');
INSERT INTO `bocinas` (`ID_BOCINA`, `MARCA`, `MODELO`, `SERIE`) VALUES ('5 PC', 'DELL', 'AX210', 'CN0R126K482200C801BJ');
-------------------------------------------------------------------------/BOCINAS

------------------------------------------------------------------CARGADORES
INSERT INTO `cargador` (`ID_CARGADOR`, `MARCA`, `MODELO`, `SERIE`) VALUES ('1 LAP', 'LENOVO', 'ADL135NLC3A', '8SSA10E75790D1SG78F031G'),
																		  ('2 LAP', 'LENOVO', 'ADL135NLC3A', '8SSA10E75790D1SG78F0368'),
																		  ('3 LAP', 'LENOVO', 'ADL135NLC3A', '8SSA10E75790D1SG78F041T'),
																		  ('1 LAPMAC', 'APPLE', 'APPLE', 'C4H80520BL0HG0XAR	'),
																		  ('2 LAPMAC', 'APPLE', 'APPLE', 'C4H80520BSYHG0XA9'),
																		  ('3 LAMPAC', 'APPLE', 'APPLE', 'C048263034CHG10BB	');

------------------------------------------------------------------------------------------/CARGADORES

----------------------------------------------------MONITOR
INSERT INTO `monitor` (`ID_MONITOR`, `MARCA`, `MODELO`, `SERIE`) VALUES ('1 PC', 'DELL', 'E2016HV', '1GQZVG2'),
																		 ('2 PC', 'DELL', 'E2016HV', '34QZVG2'),
																		 ('3 PC', 'DELL', 'E2016HV', '6FNZVG2'),
																		 ('4 PC', 'DELL', 'E2016HV', '64KZVG2'),
																		 ('5 PC', 'DELL', 'E2016HV', 'H9GGMG2');

----------------------------------------------------------/MONITOR
---------------------------------------------------------------------MOUSE
INSERT INTO `mouse` (`ID_MOUSE`, `MARCA`, `MODELO`, `SERIE`) VALUES ('1 PC', 'DELL', 'MS116T', 'CN0DV0RHLO3007AP0YRM'),
																	 ('2 PC', 'DELL', 'MS116T', 'CN0DV0RHLO30078I0SRK'),
																	 ('3 PC', 'DELL', 'MS116T', 'CN0DV0RHLO30078I0RJI'),
																	 ('4 PC', 'DELL', 'MS116T', 'CN0DV0RHLO30078IORH8'),
																	 ('5 PC', 'DELL', 'MS116T', 'CNODV0RHLO30078I0RJC');

---------------------------------------------------------------------------------------/MOUSE
-----------------------------------------------------------NO_BRAKE
INSERT INTO `no_brake` (`ID_NOBRAKE`, `MARCA`, `MODELO`, `SERIE`) VALUES ('1 PC', 'FORZA', 'NT511', '170812509961'),
																		 ('2 PC', 'FORZA', 'NT511', '170812509877'),
																		 ('3 PC', 'FORZA', 'NT511', '170812509926'),
																		 ('4 PC', 'FORZA', 'NT511', '170812510196'),
																		 ('5 PC', 'FORZA', 'NT511', '170812509964');
-----------------------------------------------------------------------------------\NO_BRAKE
-----------------------------------------------------------------------------------------TECLADO
INSERT INTO `teclado` (`ID_TECLADO`, `MARCA`, `MODELO`, `SERIE`) VALUES ('1 PC', 'DELL', 'KB216T', 'CN0F2JV2LO3007B3057L'),
																		 ('2 PC', 'DELL', 'KB216T', 'CN0F2JV2LO30079P15HM'),
																		 ('3 PC', 'DELL', 'KB216T', 'CN0F2JV2LO30079P15HX'),
																		 ('4 PC', 'DELL', 'KB216T', 'CN0F2JV2LO30079P15TU'),
																		 ('5 PC', 'DELL', 'KB216T', 'CN0F2JV2LO30079P16KD');

------------------------------------------------------------------------------------------------------------/TECLADO

----------------------------------------------------------------------ENCARGADO
INSERT INTO `encargado` (`ID_ENCARGADO`, `NOMBRE`, `APELLIDOP`, `APELLIDOM`, `DIRECCION`, `AREA`, `PISO`) VALUES ('1 PC', 'JOSÉ DANIEL', 'ORDAZ', 'HUERTA', 'SUBDIRECCION DE SISTEMAS', 'DEPTO. DE SOPORTE TÉCNICO', 'PLANTA BAJA'),
																												  ('2 PC', 'LIZETT', 'GOMEZ', 'MOJICA', 'SUBDIRECCION DE SISTEMAS', 'DEPTO. DE SOPORTE TÉCNICO', 'PLANTA BAJA'),
																												  ('3 PC', 'ALEXIS ANTONIO', 'SÁNCHEZ', 'SOLÍS', 'SUBDIRECCION DE SISTEMAS', 'SUBDIRECCION DE SISTEMAS', 'PLANTA BAJA'),
																												  ('2 MAC', 'MARISOL', 'GANDARILLA', 'AJA', 'DIRECCION DE COMUNICACION SOCIAL DE SISTEMAS', 'SUBDIRECCION DE PLANEACION Y MEDIOS', 'MEZZANINE'),
																												  ('1 MAC', 'MARISOL', 'GANDARILLA', 'AJA', 'DIRECCION DE COMUNICACION SOCIAL DE SISTEMAS', 'SUBDIRECCION DE PLANEACION Y MEDIOS', 'MEZZANINE');
------------------------------------------------------------------------------------------/ENCARGADO

-------------------------------------------------------------------------------------EQUIPO
INSERT INTO `equipo` (`ID_REGISTROE`, `TIPOSO`, `CONFIGURACION`, `RAM`, `TIPO`, `MODELO`, `MARCAEQUIPO`, `SERIEEQUIPO`, `MACADDRESS`, `DIRECCIONIP`, `RESPONSIVA1`, `RESPONSIVA2`, `OBSERVACIONES`, `ID_TECLADO`, `ID_MOUSE`, `ID_NOBRAKE`, `ID_BOCINA`, `ID_MONITOR`, `ID_ENCARGADO`, `ID_CARGADOR`)
 VALUES ('1 PC', 'WINDOWS', 'INTEL CORE I 57400 3.00 GHZ X64 8GB RAM 1TB DD', '1 RAM 8GB KINGSTONG', 'MPC', 'VOSTRO 3268',
 'DELL', '2JC99M2', '50:9A:4C:3A:E6:91', '172.17.1.179', 'SI', 'NA', '', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC',
 '1 PC'),
		('2 PC', 'WINDOWS', 'INTEL CORE I 57400 3.00 GHZ X64 8GB RAM 1TB DD', '1 RAM 8GB KINGSTONG', 'MPC', 'VOSTRO 3268',
 'DELL', '5M9MWK2', '50:9A:4C:1E:A0:00', '172.17.1.174', 'SI', 'NA', 'cpu en lugar de uriel y resto del equipo esta en el site', '2 PC', '2 PC', '2 PC', '2 PC', '2 PC', '2 PC',
 '1 PC'),
		('1 AION', 'WINDOWS', '', '', '', 'KB216T', 'DELL', '2JC99M2', 'D8:9E:F3:7F:BC:2B', '172.17.0.19', '', '', '', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC',
 '1 PC'),
		('1 PC', 'WINDOWS', 'INTEL CORE I 57400 3.00 GHZ X64 8GB RAM 1TB DD', '1 RAM 8GB KINGSTONG', 'MPC', 'VOSTRO 3268',
 'DELL', '2JC99M2', '50:9A:4C:3A:E6:91', '172.17.1.179', 'SI', 'NA', '', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC',
 '1 PC'),
		('1 PC', 'WINDOWS', 'INTEL CORE I 57400 3.00 GHZ X64 8GB RAM 1TB DD', '1 RAM 8GB KINGSTONG', 'MPC', 'VOSTRO 3268',
 'DELL', '2JC99M2', '50:9A:4C:3A:E6:91', '172.17.1.179', 'SI', 'NA', '', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC', '1 PC',
 '1 PC');
---------------------------------------------------------------------------------------------------/EQUIPOS
