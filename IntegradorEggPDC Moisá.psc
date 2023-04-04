Algoritmo IntegradorEggPDC
	Definir i,j,m,cont Como Entero
	definir genZ,palabra,letra como cadena 
	Definir condLetra Como Logico
	condLetra= Verdadero
	//HOLAAA
	//hola 2
//	Hacer
//		Hacer
//			Escribir "Ingrese el GenZ que desea evaluar(debe tener 9,16 o 1369 caracteres y ser A, B, C o D)"
//			Leer palabra
//			palabra= Mayusculas(palabra)
//			
//			para i=0 Hasta Longitud(palabra)-1 Hacer
//				letra= Subcadena(palabra,i,i)
//			si letra <> "A" y letra <> "B" y letra <> "C" y letra <> "D" 
//				condLetra= Falso
//			FinSi
//			FinPara
//			
//		Mientras Que condLetra= Falso
//		
//	Mientras Que Longitud(palabra) <> 9 y Longitud(palabra) <> 16 y Longitud(palabra) <> 1369
	palabra="CDDACCACCACAAABC"
	
	
	m= rc(Longitud(palabra))
	Dimension genZ(m,m)
//	
	cont=0
	
	Para i=0 Hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			
			genZ(i,j)= Subcadena(palabra,cont,cont)
			cont=cont+1
		FinPara
	FinPara
	
	mostrarGen(genZ,m)
	buscarCoincidencia(genZ,m)
	
//	"ACDDCADBCDABDBBA".
	
FinAlgoritmo

Funcion mostrarGen(genZ,m)
	Definir i,j Como Entero
	Escribir "El GenZ ingresado es: "
	Escribir " "
	Para i=0 Hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			Escribir Sin Saltar " ", genZ(i,j), " "
		FinPara
		Escribir ""
	FinPara
	
FinFuncion


Funcion buscarCoincidencia(genZ,m)
Definir i,j,contDiag1,contDiag2 Como Entero
Definir validarDiag1,validarDiag2 como cadena
Dimension validarDiag1(m) , validarDiag2(m)

Escribir ""
Para i=0 Hasta m-1 Hacer
	para j=0 hasta m-1 Hacer
		si i=j Entonces
			
			validarDiag1(i) = genZ(i,j)
			
		FinSi
		si i+j= m-1 Entonces
			
			validarDiag2(i) = genZ(i,j)
			
		FinSi
	FinPara
FinPara

contDiag1=0
contDiag2=0

Para i=0 Hasta m-1
	si validarDiag1(i) = genZ(0,0)
		
		contDiag1=contDiag1+1
		
	FinSi
	si validarDiag2(i) = genZ(0, m-1)
		
		contDiag2= contDiag2+1
		
	FinSi
	
FinPara

si contDiag1= m y contDiag2= m Entonces
	Escribir "SE HA DETECTADO EL GEN Z! con las letras ", genZ(0,0), " y " genZ(0,m-1)
SiNo
	Escribir "NO SE HA DETECTADO EL GEN Z :("
	
FinSi
Escribir "  "
FinFuncion

