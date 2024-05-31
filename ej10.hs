--cuartaPotencia :: Int -> Int 
--cuartaPotencia n = n * n * n * n

alCuadrado :: Int -> Int 
alCuadrado x = x * x

cuartaPotencia_v2 :: Int -> Int 
cuartaPotencia_v2 x = alCuadrado (alCuadrado x)

main :: IO ()
main = 
    print(cuartaPotencia_v2 2)