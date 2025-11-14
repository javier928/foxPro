
* --- ejemplo2tablas.PRG --- Vamos a hacer un test sobre Microsoft Windows y Microsoft Visual FoxPro

LOCAL wNombre, Pregunta1, Pregunta2, lnPuntos
CLEAR
SET TALK OFF  

* Declarar e inicializar la variable de puntos como numérica
lnPuntos = 0

wNombre = SPACE(30)
@ 2, 5 SAY "Vamos a hacer un test. Dime tu nombre, por favor:" GET wNombre
READ
CLEAR

* Display Hello
@ 2, 5 SAY "Hola, " + TRIM(wNombre) + ". Comenzamos el test."


* === PREGUNTA 1 ===
USE C:\DBASE\PREGUNTAS.DBF
GO 1
wLinea=Linea
*** Linea es un campo de la tabla PREGUNTAS.DBF
Pregunta1 = SPACE(1)
@ 4, 5 SAY "Q1. "+wLinea+" (V/F)?: " GET Pregunta1
READ
Pregunta1 = UPPER(TRIM(Pregunta1))

IF Pregunta1 = "V"
	@ 6, 5 SAY "Respuesta correcta. Tienes 1 punto."
	lnPuntos = lnPuntos + 1
ELSE
	@ 6, 5 SAY "Respuesta incorrecta."
ENDIF


* === PREGUNTA 2 ===
Pregunta2 = SPACE(1)
@ 8, 5 SAY "Q2. El comando DIR sirve para renombrar archivos. (V/F)?: " GET Pregunta2 PICT "@!"
READ
Pregunta2 = UPPER(TRIM(Pregunta2))

IF Pregunta2 = "F"
	@ 10, 5 SAY "Respuesta correcta. Tienes 1 punto."
	lnPuntos = lnPuntos + 1
ELSE
	@ 10, 5 SAY "Respuesta incorrecta."
ENDIF


@ 16, 5 SAY "INFORME FINAL DE NOTAS:"
* --- Results ---
@ 18, 5 SAY "Tu nota final en este test es: " + STR(lnPuntos, 1)

Pregunta3 = SPACE(1)
@ 20, 5 SAY "Pulse <ENTER> para terminar... " GET Pregunta3 
READ

SET TALK ON




