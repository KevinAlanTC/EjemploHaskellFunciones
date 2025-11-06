{- 
 * Programa que pasa una función como parámetro
 *
 * Referencia:
 * https://www.haskell.org/tutorial/
 * https://wiki.haskell.org/Higher_order_functions
 *
 * Software: GHC 9.6.5
 *
 * Editor: Kevin Alan Torres Cruz
 * Fecha: 5 Nov 2025
-}

-- Objetivo: Mostrar cómo en Haskell las funciones se pueden usar como argumentos
--           y cómo esto refleja el estilo declarativo de los lenguajes funcionales.

-- Definimos una función de orden superior que recibe otra función
-- y una lista de números, y aplica esa función a cada elemento.
aplicarFuncion :: (Int -> Int) -> [Int] -> [Int]
aplicarFuncion f lista = map f lista
-- 'map' es una función estándar de Haskell que aplica 'f' a cada elemento de 'lista'.

-- Definimos una función concreta que será pasada como argumento.
cuadrado :: Int -> Int
cuadrado x = x * x

-- Función principal (punto de entrada).
main :: IO ()
main = do
    -- Usamos 'aplicarFuncion' pasando 'cuadrado' como parámetro.
    let numeros = [1..5]
    let resultado = aplicarFuncion cuadrado numeros
    putStrLn "Aplicando la función 'cuadrado' a la lista [1..5]:"
    print resultado
