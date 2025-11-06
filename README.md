# Ejemplo Haskell - Paso de función como parámetro

**Curso:** MCA 1 2026-1 FCiencias  
**Tema:** Paso de una función como parámetro  
**Software:** GHC 9.6.5  
**Editor:** Kevin Alan Torres Cruz  
**Fecha:** 5 Nov 2025  

## Descripción
Este programa muestra cómo en Haskell las funciones pueden usarse como argumentos, reflejando el estilo declarativo de los lenguajes funcionales.  
Se define una función de orden superior que recibe otra función (`cuadrado`) y la aplica a una lista de números.

## Código principal
El archivo `Main.hs` contiene el siguiente ejemplo:

```haskell
aplicarFuncion :: (Int -> Int) -> [Int] -> [Int]
aplicarFuncion f lista = map f lista

cuadrado :: Int -> Int
cuadrado x = x * x

main :: IO ()
main = do
    let numeros = [1..5]
    let resultado = aplicarFuncion cuadrado numeros
    putStrLn "Aplicando la función 'cuadrado' a la lista [1..5]:"
    print resultado
```

### Salida esperada
```code
Aplicando la función 'cuadrado' a la lista [1..5]:
[1,4,9,16,25]
```
