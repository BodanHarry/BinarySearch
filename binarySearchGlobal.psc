Proceso binarySearchGlobal
	Definir intList Como Entero;
	Dimension intList[100];
	Definir i como entero;
	
	Para i<-0 Hasta 99 Con Paso 1 Hacer
		intList[i] <- i;
	FinPara
	
	binarySearch(intList,0,99, 34);
FinProceso

SubProceso binarySearch(lista, start, final, target)
	Definir middle como entero;
	
	Si start > final Entonces
		Escribir "No existe"; 
	FinSi
	
	middle <- trunc((start + final) /2); 
	
	Si lista[middle] == target Entonces
		Escribir "Encontrado"; 
	Sino Si lista[middle] < target Entonces
			binarySearch(lista, middle+1, final, target);
		Sino 
			binarySearch(lista, start, middle -1, target);
		FinSI
	FinSI
	
FinSubProceso