Proceso binarySearchGlobal
	Definir intList Como Entero;
	Dimension intList[100];
	Definir i, iteraciones como entero;
	iteraciones <- 0;
	Para i<-0 Hasta 99 Con Paso 1 Hacer
		intList[i] <- i;
	FinPara
	
	binarySearch(intList,0,99, 67, iteraciones);
FinProceso

SubProceso binarySearch(lista, start, final, target, iteraciones)
	iteraciones <- iteraciones + 1;
	Definir middle como entero;
	
	Si start > final Entonces
		Escribir "No existe"; 
	FinSi
	
	middle <- trunc((start + final) /2); 
	
	Si lista[middle] == target Entonces
		Escribir "Encontrado"; 
		Escribir "Iteraciones: ", iteraciones;
	Sino Si lista[middle] < target Entonces
			binarySearch(lista, middle+1, final, target, iteraciones);
		Sino 
			binarySearch(lista, start, middle -1, target, iteraciones);
		FinSI
	FinSI
	
FinSubProceso