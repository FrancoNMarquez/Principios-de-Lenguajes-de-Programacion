fibonacci :: Int -> Int
fibonacci x
    | x == 0 = 0
    | x == 1 = 1
    | otherwise = fibonacci (x - 1) + fibonacci (x - 2)


enesimoFibonacci :: Int
enesimoFibonacci = fibonacci 10

factorial :: Int -> Int
factorial x
    | x == 0 = 1
    | x == 1 = 1
    | otherwise = x*factorial (x-1)

sumatoria :: Int -> Int -> Int
sumatoria i n
    | i == 1 = 1
    | otherwise = i^n + sumatoria (i-1) n

sucesion :: Int -> Int -> Float
sucesion x n = fromIntegral (sumatoria n n) / fromIntegral (factorial x)