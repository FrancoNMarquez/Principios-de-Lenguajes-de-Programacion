factorial :: Int -> Int 
factorial n 
    | n == 0 = 1
    | n == 1 = 1
    | n >= 2 = n * factorial (n-1)

factorialRow :: Int -> String 
factorialRow n = 
    "Factorial("++ show(n) ++")" ++ " = " ++ show(factorial n)

factorialTable :: Int -> Int -> String 
factorialTable n m
    | n <= m = factorialRow n ++ "\n" ++ factorialTable (n+1) m
    | otherwise = ""
main :: IO ()
main = 
    putStr(factorialTable 3 7)