-- 1/0! + 1/1! + 1/2! ... 1/n!

aproxE:: Integer -> Double
aproxE n
    |n == 0 = 1.0 / 1.0
    |n > 0 = (1.0 / fromIntegral (factorial n)) + aproxE (n-1)
    |otherwise = 0.0

factorial :: Integer -> Integer
factorial n
    |n==0=1
    |n>0 =  n * factorial (n-1)
    |otherwise = 0