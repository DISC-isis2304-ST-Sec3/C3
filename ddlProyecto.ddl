-- Generated by Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   at:        2023-10-01 22:41:10 EDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE entradacliente (
    id                   VARCHAR2(4000) NOT NULL,
    cliente              VARCHAR2(4000) NOT NULL,
    reserva              unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    reservahabitacion_id VARCHAR2(4000) NOT NULL
);

CREATE UNIQUE INDEX entradacliente__idx ON
    entradacliente (
        reservahabitacion_id
    ASC );

ALTER TABLE entradacliente ADD CONSTRAINT entradacliente_pk PRIMARY KEY ( id );

CREATE TABLE equipos (
    id                  VARCHAR2(4000) NOT NULL,
    nombre              VARCHAR2(4000) NOT NULL,
    costo               NUMBER NOT NULL,
    servicio_salones_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE equipos ADD CONSTRAINT equipos_pk PRIMARY KEY ( id );

CREATE TABLE habitacion (
    id                   VARCHAR2(4000) NOT NULL,
    tipo                 VARCHAR2(4000) NOT NULL,
    capacidad            INTEGER NOT NULL,
    costopornoche        NUMBER NOT NULL,
    hotel_id             VARCHAR2(4000) NOT NULL,
    reservahabitacion_id VARCHAR2(4000) NOT NULL,
    habitacion           unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL
);

ALTER TABLE habitacion ADD CONSTRAINT habitacion_pk PRIMARY KEY ( id );

CREATE TABLE hotel (
    id     VARCHAR2(4000) NOT NULL,
    nombre VARCHAR2(4000) NOT NULL,
    ciudad VARCHAR2(4000) NOT NULL,
    pais   VARCHAR2(4000) NOT NULL
);

ALTER TABLE hotel ADD CONSTRAINT hotel_pk PRIMARY KEY ( id );

CREATE TABLE planconsumo (
    id                   VARCHAR2(4000) NOT NULL,
    nombre               VARCHAR2(4000) NOT NULL,
    descuento            NUMBER,
    noches               INTEGER NOT NULL,
    reservahabitacion_id VARCHAR2(4000) NOT NULL,
    planconsumo          unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL
);

CREATE UNIQUE INDEX planconsumo__idx ON
    planconsumo (
        reservahabitacion_id
    ASC );

ALTER TABLE planconsumo ADD CONSTRAINT planconsumo_pk PRIMARY KEY ( id );

CREATE TABLE producto (
    id                VARCHAR2(4000) NOT NULL,
    nombre            VARCHAR2(4000) NOT NULL,
    precio            NUMBER NOT NULL,
    serviciocomida_id VARCHAR2(4000) NOT NULL,
    serviciotienda_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE producto ADD CONSTRAINT producto_pk PRIMARY KEY ( id );

CREATE TABLE reservahabitacion (
    id               VARCHAR2(4000) NOT NULL,
    cliente          unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    habitacion       unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    fechaentrada     DATE NOT NULL,
    fechasalida      DATE NOT NULL,
    plan             unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    cantidadpersonas INTEGER NOT NULL
);

ALTER TABLE reservahabitacion ADD CONSTRAINT reservahabitacion_pk PRIMARY KEY ( id );

CREATE TABLE reservaservicio (
    id                   VARCHAR2(4000) NOT NULL,
    cliente              VARCHAR2(4000) NOT NULL,
    servicio             VARCHAR2(4000) NOT NULL,
    fecha                DATE NOT NULL,
    hora                 TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    reservahabitacion_id VARCHAR2(4000) NOT NULL,
    servicio_id          VARCHAR2(4000) NOT NULL
);

ALTER TABLE reservaservicio ADD CONSTRAINT reservaservicio_pk PRIMARY KEY ( id );

CREATE TABLE salidacliente (
    id                   VARCHAR2(4000) NOT NULL,
    cliente              VARCHAR2(4000) NOT NULL,
    reserva              VARCHAR2(4000) NOT NULL,
    totalcuenta          NUMBER NOT NULL,
    reservahabitacion_id VARCHAR2(4000) NOT NULL
);

CREATE UNIQUE INDEX salidacliente__idx ON
    salidacliente (
        reservahabitacion_id
    ASC );

ALTER TABLE salidacliente ADD CONSTRAINT salidacliente_pk PRIMARY KEY ( id );

CREATE TABLE servicio (
    id          VARCHAR2(4000) NOT NULL,
    descripcion VARCHAR2(4000) NOT NULL,
    nombre      VARCHAR2(4000) NOT NULL,
    costo       NUMBER
);

ALTER TABLE servicio ADD CONSTRAINT servicio_pk PRIMARY KEY ( id );

CREATE TABLE servicio_salones (
    id          VARCHAR2(4000) NOT NULL,
    nombre      VARCHAR2(4000) NOT NULL,
    capacidad   VARCHAR2(4000) NOT NULL,
    costohora   NUMBER NOT NULL,
    servicio_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE servicio_salones ADD CONSTRAINT servicio_salones_pk PRIMARY KEY ( id );

CREATE TABLE serviciocomida (
    id          VARCHAR2(4000) NOT NULL,
    nombre      VARCHAR2(4000) NOT NULL,
    descripcion VARCHAR2(4000),
    tipo        VARCHAR2(4000) NOT NULL,
    servicio_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE serviciocomida ADD CONSTRAINT serviciocomida_pk PRIMARY KEY ( id );

CREATE TABLE serviciolimpieza (
    id          VARCHAR2(4000) NOT NULL,
    tipo        VARCHAR2(4000) NOT NULL,
    servicio_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE serviciolimpieza ADD CONSTRAINT serviciolimpieza_pk PRIMARY KEY ( id );

CREATE TABLE servicioshotel (
    id       VARCHAR2(4000) NOT NULL,
    nombre   VARCHAR2(4000) NOT NULL,
    hotel_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE servicioshotel ADD CONSTRAINT servicioshotel_pk PRIMARY KEY ( id );

CREATE TABLE serviciotienda (
    id          VARCHAR2(4000) NOT NULL,
    nombre      VARCHAR2(4000),
    servicio_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE serviciotienda ADD CONSTRAINT serviciotienda_pk PRIMARY KEY ( id );

CREATE TABLE servicioutensilios (
    id          VARCHAR2(4000) NOT NULL,
    tipo        VARCHAR2(4000) NOT NULL,
    nombre      VARCHAR2(4000) NOT NULL,
    servicio_id VARCHAR2(4000) NOT NULL
);

ALTER TABLE servicioutensilios ADD CONSTRAINT servicioutensilios_pk PRIMARY KEY ( id );

CREATE TABLE tipohabitacion (
    id             VARCHAR2(4000) NOT NULL,
    descripcion    VARCHAR2(4000) NOT NULL,
    dotacion       VARCHAR2(4000) NOT NULL,
    habitacion_id  VARCHAR2(4000) NOT NULL,
    tipohabitacion unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL
);

CREATE UNIQUE INDEX tipohabitacion__idx ON
    tipohabitacion (
        habitacion_id
    ASC );

ALTER TABLE tipohabitacion ADD CONSTRAINT tipohabitacion_pk PRIMARY KEY ( id );

CREATE TABLE tipousuario (
    id   VARCHAR2(4000) NOT NULL,
    tipo VARCHAR2(4000) NOT NULL
);

ALTER TABLE tipousuario ADD CONSTRAINT tipousuario_pk PRIMARY KEY ( id );

CREATE TABLE usuario (
    id                   VARCHAR2(4000) NOT NULL,
    nombre               VARCHAR2(4000) NOT NULL,
    tipo                 unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    tipodocumento        VARCHAR2(4000) NOT NULL,
    correo               VARCHAR2(4000) NOT NULL,
    reservahabitacion_id VARCHAR2(4000) NOT NULL,
    tipousuario_id       VARCHAR2(4000) NOT NULL,
    usuario              unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE entradacliente
    ADD CONSTRAINT entradacliente_reservahabitacion_fk FOREIGN KEY ( reservahabitacion_id )
        REFERENCES reservahabitacion ( id );

ALTER TABLE equipos
    ADD CONSTRAINT equipos_servicio_salones_fk FOREIGN KEY ( servicio_salones_id )
        REFERENCES servicio_salones ( id );

ALTER TABLE habitacion
    ADD CONSTRAINT habitacion_hotel_fk FOREIGN KEY ( hotel_id )
        REFERENCES hotel ( id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE habitacion
    ADD CONSTRAINT habitacion_reservahabitacion_fk FOREIGN KEY ( reservahabitacion_id )
        REFERENCES reservahabitacion ( id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE planconsumo
    ADD CONSTRAINT planconsumo_reservahabitacion_fk FOREIGN KEY ( reservahabitacion_id )
        REFERENCES reservahabitacion ( id );

ALTER TABLE producto
    ADD CONSTRAINT producto_serviciocomida_fk FOREIGN KEY ( serviciocomida_id )
        REFERENCES serviciocomida ( id );

ALTER TABLE producto
    ADD CONSTRAINT producto_serviciotienda_fk FOREIGN KEY ( serviciotienda_id )
        REFERENCES serviciotienda ( id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE reservaservicio
    ADD CONSTRAINT reservaservicio_reservahabitacion_fk FOREIGN KEY ( reservahabitacion_id )
        REFERENCES reservahabitacion ( id );

ALTER TABLE reservaservicio
    ADD CONSTRAINT reservaservicio_servicio_fk FOREIGN KEY ( servicio_id )
        REFERENCES servicio ( id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE salidacliente
    ADD CONSTRAINT salidacliente_reservahabitacion_fk FOREIGN KEY ( reservahabitacion_id )
        REFERENCES reservahabitacion ( id );

ALTER TABLE servicio_salones
    ADD CONSTRAINT servicio_salones_servicio_fk FOREIGN KEY ( servicio_id )
        REFERENCES servicio ( id );

ALTER TABLE serviciocomida
    ADD CONSTRAINT serviciocomida_servicio_fk FOREIGN KEY ( servicio_id )
        REFERENCES servicio ( id );

ALTER TABLE serviciolimpieza
    ADD CONSTRAINT serviciolimpieza_servicio_fk FOREIGN KEY ( servicio_id )
        REFERENCES servicio ( id );

ALTER TABLE servicioshotel
    ADD CONSTRAINT servicioshotel_hotel_fk FOREIGN KEY ( hotel_id )
        REFERENCES hotel ( id );

ALTER TABLE serviciotienda
    ADD CONSTRAINT serviciotienda_servicio_fk FOREIGN KEY ( servicio_id )
        REFERENCES servicio ( id );

ALTER TABLE servicioutensilios
    ADD CONSTRAINT servicioutensilios_servicio_fk FOREIGN KEY ( servicio_id )
        REFERENCES servicio ( id );

ALTER TABLE tipohabitacion
    ADD CONSTRAINT tipohabitacion_habitacion_fk FOREIGN KEY ( habitacion_id )
        REFERENCES habitacion ( id );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_reservahabitacion_fk FOREIGN KEY ( reservahabitacion_id )
        REFERENCES reservahabitacion ( id );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_tipousuario_fk FOREIGN KEY ( tipousuario_id )
        REFERENCES tipousuario ( id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            19
-- CREATE INDEX                             4
-- ALTER TABLE                             38
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                  14
-- WARNINGS                                 0
