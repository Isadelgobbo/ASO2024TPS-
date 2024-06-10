TP 3 ARQSO
1) Ejecutar varias veces los códigos escritos en  Python: sinhilos.py y 
conhilos.py  
a) ¿Qué se puede notar con respecto al tiempo de ejecución? ¿Es 
predecible?
se puede notar que tienen distintos segundos, no siempre es predecible
b) Comparar con un campañero el tiempo de ejecución. ¿Son iguales?
no, no son iguales, tenemos distintos tiempos de ejecución
c) Ejecutar el archivo suma_rasta.py unas 10 veces, luego descomentar 
(borrar el #) las líneas 11,12,19 y 20 guardarlo y ejecutarlo otras 10 
veces. ¿Qué pasó? ¿Por qué?
al principio el resultado siempre era 0 pero tardaba distintos segundos y cuando borré el #, daba distintos resultados y en distintos segundos.
2. A-
import threading

NUMBER_OF_THREADS = 5  # Número de comensales
CANTIDAD_INICIAL_HAMBURGUESAS = 20
cantidad_restante_hamburguesas = CANTIDAD_INICIAL_HAMBURGUESAS
mutex = threading.Lock()

def obtener_hamburguesa(comensal):
    global cantidad_restante_hamburguesas
    while True:
        with mutex:
            if cantidad_restante_hamburguesas > 0:
                print(f"Comensal {comensal} obtiene la hamburguesa {cantidad_restante_hamburguesas}")
                cantidad_restante_hamburguesas -= 1
            else:
                print("SE TERMINARON LAS HAMBURGUESAS :(")
                return

def main():
    hilos = []
    for i in range(NUMBER_OF_THREADS):
        hilo = threading.Thread(target=obtener_hamburguesa, args=(i,))
        hilos.append(hilo)
        hilo.start()

    for hilo in hilos:
        hilo.join()

if __name__ == "__main__":
    main()
b. import threading

NUMBER_OF_THREADS = 2  # Número de comensales
CANTIDAD_INICIAL_HAMBURGUESAS = 8
cantidad_restante_hamburguesas = CANTIDAD_INICIAL_HAMBURGUESAS
mutex = threading.Lock()

def obtener_hamburguesa(comensal):
    global cantidad_restante_hamburguesas
    while True:
        with mutex:
            if cantidad_restante_hamburguesas > 0:
                print(f"Comensal {comensal} obtiene la hamburguesa {cantidad_restante_hamburguesas}")
                cantidad_restante_hamburguesas -= 1
            else:
                print("SE TERMINARON LAS HAMBURGUESAS :(")
                return

def main():
    hilos = []
    for i in range(NUMBER_OF_THREADS):
        hilo = threading.Thread(target=obtener_hamburguesa, args=(i,))
        hilos.append(hilo)
        hilo.start()

    for hilo in hilos:
        hilo.join()

if __name__ == "__main__":
    main()
