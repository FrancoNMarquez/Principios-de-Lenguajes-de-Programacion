module LeapYear where

import System.IO (putStrLn)

-- Function to check if a year is a leap year
esBisiesto :: Int -> String
esBisiesto n
    | (n `mod` 4 == 0) && (n `mod` 100 /= 0) || (n `mod` 400 == 0) = "Es Bisiesto"
    | otherwise = "No es Bisiesto"

-- Function to print leap years in a range
bisiesto :: Int -> Int -> IO ()
bisiesto n m
    | n == m = putStrLn (show n ++ ": " ++ esBisiesto n)
    | n < m = do
        bisiesto (n - 1) (m)
        putStrLn (show n ++ ": " ++ esBisiesto n)
    | otherwise = putStrLn "Error al ingresar datos"

-- Example usage (can be placed in `main` function)
main :: IO ()
main = bisiesto 1900 2024
