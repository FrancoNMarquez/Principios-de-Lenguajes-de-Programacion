
narciso :: Int -> Bool
-- El numero es igual a la suma elevada
narciso n = n == sumaElevada n

sumaElevada :: Int -> Int
sumaElevada n = auxiliar n (digitosN n)

--digitosN2 :: Int -> Int
--digitosN2 n = length(show(n))

digitosN :: Int -> Int
digitosN p
    | p<10 = 1
    | p>=10 = digitosN (div p 10) + 1

--1634 = 1^4 + 6^4 + 3^4 + 4^4

auxiliar :: Int -> Int -> Int
auxiliar m digitos
    | m < 10 = round (potencia m digitos)
    | m >= 10 = auxiliar (div m 10) digitos + round (potencia (mod m 10) digitos)

potencia :: Int -> Int -> Float
-- 5^4 = 5x5x5x5
-- 5^4 = 5^3x5 
potencia num exp
    |exp == 1 = fromIntegral num
    |otherwise = potencia num (exp-1) * fromIntegral num

narcisomenores :: Int -> String
narcisomenores m
 | m > 1 && narciso m = show m ++ "\n" ++ narcisomenores (m-1)
 | m > 1 && not (narciso m) = narcisomenores (m-1)
 | m == 1 = "  " ++ show 1