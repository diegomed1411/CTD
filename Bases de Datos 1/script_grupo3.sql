INSERT INTO tipos_intereses
VALUES (DEFAULT, "interes fijo"),	
	   (DEFAULT, "interes variable"),
	   (DEFAULT, "otros intereses");
       
INSERT INTO tipos_cuentas 
VALUES (DEFAULT, "C.A."), 
	   (DEFAULT, "C.C."),
       (DEFAULT, "OTRAS");
       
UPDATE tipos_cuentas
SET tipo_cuenta = "CUENTA CORRIENTE"
WHERE tipo_cuenta = "C.C.";

UPDATE tipos_cuentas
SET tipo_cuenta = "CAJA DE AHORRO"
WHERE tipo_cuenta = "C.A.";

DELETE FROM tipos_cuentas
WHERE tipo_cuenta = "OTRAS";