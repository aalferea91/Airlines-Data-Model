CREATE TABLE DM_AEROLINEAS ( 

 COD_PAIS string, 

 PAIS string, 

COD_PAIS2 string , 

COD_CONTINENTE string , 

CONTINENTE string, 

LONGITUD float, 

LATITUD float); 

 

CREATE TABLE  DM_AEROPUERTOS ( 

 COD_AEROPUERTO string, 

 NOMBRE_AEROPUERTO string, 

 CIUDAD_AEROPUERTO string, 

 PAIS_AEROPUERTO string, 

 COD_PAIS string, 

 COD_IATA_FAA string, 

 COD_ICAO string, 

 LATITUD float, 

 LONGITUD float, 

 ALTITUD float, 

 ZONA_HORARIA integer, 

 DST string, 

 ZONA_HORARIA_TZ string); 

 

 

CREATE TABLE  DM_AEROLINEAS ( 

 COD_AEROLINEA string, 

 NOMBRE_AEROLINEA string, 

 COD_PAIS string, 

 COD_IATA string, 

 COD_ICAO string, 

 IDENTIFICACION string, 

 PAIS_AEROLINEA string, 

 SW_ACTIVA integer); 

 

CREATE TABLE  HC_RUTAS ( 

  cod_ruta  integer, 

  cod_aerolinea  string, 

  cod_aeropuerto_ori  string, 

  cod_aeropuerto_des  string 

  ); 

 

CREATE TABLE  DM_EQUIPAMIENTOS ( 

  cod_equipamiento  string, 

  desc_equipamiento string 

  ); 

 

CREATE TABLE  CO_RUTAS_EQUIPAMIENTOS ( 

 cod_ruta  integer, 

 cod_equipamiento  string 

  ); 