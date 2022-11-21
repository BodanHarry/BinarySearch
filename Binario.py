def busqueda_binaria(lista, comienzo, final, objetivo, iteraciones):
    iteraciones = iteraciones + 1
    print(f'buscando {objetivo} entre {lista[comienzo]} y {lista[final - 1]}')
    if comienzo > final:
        return False

    medio = (comienzo + final) // 2

    if lista[medio] == objetivo:
        print("Se encontró")
        print("Iteraciones: ", iteraciones)
        return True

    elif lista[medio] < objetivo:
        return busqueda_binaria(lista, medio + 1, final, objetivo, iteraciones)
    else:
        return busqueda_binaria(lista, comienzo, medio - 1, objetivo,iteraciones)

lista = []
for i in range(9999999):
    lista.append(i)
iteraciones = 0

busqueda_binaria(lista, 0, len(lista),4999999, iteraciones)