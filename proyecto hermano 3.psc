Algoritmo asistencia_categoria_hermano
	Definir cantidadalumnos, i Como Entero
	Definir opcion Como Entero
	Definir nombrealumno, fecha Como Cadena 
	Definir presentes Como Entero
	Definir ausentes Como Entero
	Dimensionar lista_nombres_presentes[100]
	Dimensionar lista_nombres_auesentes[100]
	presentes<-0
	Escribir "Ingrese la fecha de hoy."
	Leer fecha
	Borrar Pantalla
	Escribir "1. Pasar la asistencia de hoy."
	Escribir "2. cronograma de la semana."
	Escribir "3. salir"
	Leer opcion
	Borrar Pantalla
	
	Segun opcion hacer
		1:
			Escribir "ingrese el numero de alumnos."
			Leer cantidadalumnos
			Para i <- 1 Hasta cantidadalumnos Con Paso 1 Hacer
				Escribir "Nombre del alumno numero ",i ":"
				Leer nombrealumno
				Escribir nombrealumno " ¿Vino a entrenar hoy? (1 para SI/0 para NO)"
				Leer asistio
				Si asistio == 1 Entonces
					presentes <- presentes + 1
					lista_nombres_presentes[presentes] <- nombrealumno
					Escribir nombrealumno, " quedo registrado."
				SiNO
					ausentes <- ausentes + 1
					lista_nombres_auesentes[ausentes] <- nombrealumno
					Escribir nombrealumno, " tiene falta." 
				FinSi
			FinPara
		2:
			Escribir "=== CRONOGRAMA SEMANAL ==="
			Escribir "Lunes: 18:00hs - Entrenamiento Físico"
			Escribir "Martes: 18:30hs - Táctica y Estrategia"
			Escribir "Miércoles: 18:00hs - Fútbol Reducido"
			Escribir "Jueves: 19:00hs - Gimnasio"
			Escribir "Viernes: 18:00hs - Repaso de Jugadas"
			Escribir ""
			Escribir "presione cualquier tecla para volver..."
			Esperar Tecla
		3:
			Escribir "cerrando sistemas, que tenga un buen dia:"
			
	FinSegun

	Escribir "------------------------------------------------------------------------"
	Escribir "Resumen de asistencia - fecha: ", fecha
	Escribir "Los que vinieron hoy son:"
	Para i <- 1 Hasta presentes Con Paso 1 Hacer
		Escribir "- ", lista_nombres_presentes[i]
	FinPara
	Escribir "los que faltaron hoy son:"
	Para i <- 1 Hasta presentes Con Paso 1 Hacer
		Escribir "- ", lista_nombres_auesentes[i]
FinPara
	Escribir "Total presentes: ", presentes
	Escribir "total ausentes: ", ausentes
	Escribir ""
	Escribir "===COPIAR PARA EXEL (Formato CSV) ==="
	Escribir "Nombre : Estado"
	Escribir "=========================================="
	Para i <- 1 Hasta presentes Con Paso 1 Hacer
		Escribir lista_nombres_presentes[i], ":PRESENTE"
	FinPara
	Para i <- 1 Hasta ausentes Con Paso 1 Hacer
		Escribir lista_nombres_auesentes[i], ":AUSENTES"
	FinPara
	Escribir "==========================================="
FinAlgoritmO
