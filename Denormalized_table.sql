CREATE TABLE final_table AS
SELECT t5.cod_ruta,t5.cod_aerolinea,t6.nombre_aerolinea,t6.cod_pais AS cod_pais_aerolinea, t6.cod_iata AS cod_iata_aerolinea,
        t6.cod_icao AS cod_icao_aerolinea, t6.identificacion AS identificacion_aerolinea, t6.pais_aerolinea, t6.sw_activa,
        t5.cod_aeropuerto_ori,t5.nombre_aeropuerto_ori,t5.ciudad_aeropuerto_ori,
        t5.pais_aeropuerto_ori,t5.cod_pais_ori,t5.cod_iata_faa_ori,t5.cod_icao_ori,t5.latitud_ori,t5.longitud_ori,
        t5.altitud_ori,t5.zona_horaria_ori,t5.dst_ori,t5.zona_horaria_tz_ori,t5.cod_aeropuerto_des,
        t5.nombre_aeropuerto_des, t5.ciudad_aeropuerto_des,t5.pais_aeropuerto_des, t5.cod_pais_des, t5.cod_iata_faa_des,
        t5.cod_icao_des, t5.latitud_des, t5.longitud_des, t5.altitud_des,t5.zona_horaria_des, t5.dst_des,
        t5.zona_horaria_tz_des
        
FROM (
    SELECT t3.cod_ruta,t3.cod_aerolinea,t3.cod_aeropuerto_ori,t3.nombre_aeropuerto_ori,t3.ciudad_aeropuerto_ori,
        t3.pais_aeropuerto_ori,t3.cod_pais_ori,t3.cod_iata_faa_ori,t3.cod_icao_ori,t3.latitud_ori,t3.longitud_ori,
        t3.altitud_ori,t3.zona_horaria_ori,t3.dst_ori,t3.zona_horaria_tz_ori,t3.cod_aeropuerto_des,
        t4.nombre_aeropuerto AS nombre_aeropuerto_des, t4.ciudad_aeropuerto AS ciudad_aeropuerto_des,
        t4.pais_aeropuerto AS pais_aeropuerto_des, t4.cod_pais AS cod_pais_des, t4.cod_iata_faa AS cod_iata_faa_des,
        t4.cod_icao AS cod_icao_des, t4.latitud AS latitud_des, t4.longitud AS longitud_des, t4.altitud AS altitud_des,
        t4.zona_horaria AS zona_horaria_des, t4.dst AS dst_des, t4.zona_horaria_tz AS zona_horaria_tz_des
    FROM (
    SELECT t1.cod_ruta,t1.cod_aerolinea,t1.cod_aeropuerto_ori,t2.nombre_aeropuerto AS nombre_aeropuerto_ori,
            t2.ciudad_aeropuerto AS ciudad_aeropuerto_ori, t2.pais_aeropuerto AS pais_aeropuerto_ori,
            t2.cod_pais AS cod_pais_ori, t2.cod_iata_faa AS cod_iata_faa_ori, t2.cod_icao as cod_icao_ori,
            t2.latitud AS latitud_ori, t2.longitud AS longitud_ori, t2.altitud AS altitud_ori,
            t2.zona_horaria AS zona_horaria_ori, t2.dst AS dst_ori, t2.zona_horaria_tz AS zona_horaria_tz_ori,
            t1.cod_aeropuerto_des AS cod_aeropuerto_des
        FROM hc_rutas AS t1
        INNER JOIN dm_aeropuertos AS t2
        ON t1.cod_aeropuerto_ori=t2.cod_aeropuerto) AS t3
    INNER JOIN dm_aeropuertos AS t4
    ON t3.cod_aeropuerto_des=t4.cod_aeropuerto) AS t5
INNER JOIN dm_aerolineas AS t6
ON t5.cod_aerolinea=t6.cod_aerolinea;