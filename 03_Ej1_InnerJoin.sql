USE vivero_fenix;

SELECT C.APELLIDO ´APELLIDO´, C.NOMBRE ´NOMBRE´, CL.NOMBRE ´CALLE´, C.ALTURA ´ALTURA´
FROM CLIENTES AS C
         INNER JOIN calles AS CL ON C.COD_CALLE;

SELECT C.APELLIDO ´APELLIDO´, C.NOMBRE ´NOMBRE´, L.NOMBRE
FROM CLIENTES AS C
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD;

SELECT C.APELLIDO ´APELLIDO´, C.NOMBRE ´NOMBRE´, B.NOMBRE
FROM CLIENTES AS C
         INNER JOIN barrios AS B ON C.COD_BARRIO;

SELECT F.*, FP.*
FROM facturas AS F
         INNER JOIN formas_pago AS FP ON F.COD_FORMA_PAGO = FP.COD_FORMA_PAGO
WHERE FP.DESCRIPCION = 'EFECTIVO'
ORDER BY F.COD_CLIENTE;


SELECT P.*, TP.*
FROM plantas AS P
         INNER JOIN tipos_plantas as TP ON P.COD_TIPO_PLANTA = TP.COD_TIPO_PLANTA
WHERE TP.NOMBRE = 'FLORES';

SELECT C.*, L.*
FROM clientes AS C
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD = L.COD_LOCALIDAD
WHERE L.NOMBRE = 'CORDOBA';

SELECT C.*, CI.*, L.*
FROM CLIENTES AS C
         INNER JOIN condiciones_iva AS CI ON C.COD_CONDICION_IVA = CI.COD_CONDICION_IVA
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD = L.COD_LOCALIDAD
WHERE CI.DESCRIPCION = 'MONOTRIBUTISTA'
ORDER BY L.NOMBRE;

SELECT C.*, L.*
FROM clientes AS C
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD = L.COD_LOCALIDAD
WHERE L.NOMBRE = 'CORDOBA'
   OR C.APELLIDO = 'A%';

SELECT C.*, L.*
FROM CLIENTES AS C
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD = L.COD_LOCALIDAD
WHERE L.NOMBRE = 'CARLOS PAZ'
   OR L.NOMBRE = 'ALTA GRACIA'
   OR L.NOMBRE = 'CORDOBA';


SELECT C.*, L.*
FROM CLIENTES AS C
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD = L.COD_LOCALIDAD
WHERE L.NOMBRE != 'AREQUITO'
  AND L.NOMBRE != 'MERLO';

SELECT C.NOMBRE, C.APELLIDO, B.NOMBRE 'BARRIO', L.NOMBRE 'LOCALIDAD'
FROM clientes AS C
         INNER JOIN barrios AS B ON C.COD_BARRIO = B.COD_BARRIO
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD = L.COD_LOCALIDAD
WHERE L.NOMBRE = 'CORDOBA'
  AND NOT SUBSTR(C.APELLIDO, 0, 1) BETWEEN 'D' AND 'P'
ORDER BY B.NOMBRE;


SELECT D.CANTIDAD, P.PRECIO, P.PRECIO * D.CANTIDAD AS MONTO
FROM detalles_facturas AS D
         INNER JOIN PLANTAS AS P ON D.COD_PLANTA = P.COD_PLANTA;


SELECT C.*, L.*, CI.*
FROM CLIENTES AS C
         INNER JOIN localidades AS L ON C.COD_LOCALIDAD = L.COD_LOCALIDAD
         INNER JOIN condiciones_iva AS CI ON C.COD_CONDICION_IVA = CI.COD_CONDICION_IVA
WHERE CI.DESCRIPCION = 'MONOTRIBUTISTA'
  AND L.NOMBRE = 'SAN%';

SELECT C.*, B.*
FROM CLIENTES AS C
         INNER JOIN barrios AS B ON C.COD_BARRIO = B.COD_BARRIO
WHERE B.NOMBRE = 'ALTO ALBERDI'
  AND B.NOMBRE = 'ALTA CORDOBA'
  AND C.TELEFONO IS NOT NULL; #REVISAR
