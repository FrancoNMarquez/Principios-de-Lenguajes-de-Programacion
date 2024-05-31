{-
-- Definir en el lenguaje de programación Haskell la función "feliz1000" 
que determine si un entero N dado, es un número feliz o infeliz.
-- Un número es feliz  si al sumar los cuadrados de los dígitos y 
repitiendo varias veces (las que sean necesarias) obtenemos un 1. 
-- Por el contrario, si nunca obtenemos el 1 y la suma supera el número 1000,
 entonces se trata de un número infeliz1000. 
-- Por ejemplo 13 es un número feliz, ya que 
13 --> 1^2 + 3^2 = 1 + 9 = 10, y 10 --> 1^2 + 0^2 = 1
-- y 19-}
feliz1000 :: Int -> Bool
-- El numero es igual a la suma elevada
feliz1000 n = 1 == sumaElevada n

sumaElevada :: Int -> Int
sumaElevada n
    | n == 1 = 1
    | n == 0 = 0
    | n < 1000 = sumaElevada (auxiliar n)
    | otherwise  = -1

auxiliar :: Int -> Int
auxiliar n
    | n < 10 = n*n
    | otherwise = auxiliar (div n 10) + j*j
    where
        j = mod n 10

--163 = aux 16 + 3^2
--    = aux 1 + 6^2 + 3^2
--    = 1^1 + 6^2  3^2

