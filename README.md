### Prueba de Algoritmos.

1. Dado un número cualquiera, realizar la suma factorial de todos los números hacia abajo hasta el 1.

   Ejemplo: suma_factorial(10)

```text
   Resultado (suma de los siguientes números):
    1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 +
    1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 +
    1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 +
    1 + 2 + 3 + 4 + 5 + 6 + 7 +
    1 + 2 + 3 + 4 + 5 + 6 +
    1 + 2 + 3 + 4 + 5 +
    1 + 2 + 3 + 4 +
    1 + 2 + 3 +
    1 + 2 +
    1
```




2. Dado un array y el número de divisiones deseado, sin utilizar ninguna función avanzada de arrays, partir el array en ese número de divisiones ordenadamente. Si no es divisible la suma de elementos y el número de subdivisiones, dejar a nil los últimos registros

```text
   Ejemplo:
   array: [a, b, c, d, e, f, g, h, i, j, k, l]
   num_subdivisiones: 3
   
   Resultado
   [[a, d, g, j]
   [b, e, h, k]
   [c, f, i, l]]
```