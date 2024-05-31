charToInt :: Char -> Int
charToInt c = fromEnum c - fromEnum '0'

digitoRomano :: Char -> String
digitoRomano n = digitoRomano2 (charToInt n)
    where
        digitoRomano2 :: Int -> String
        digitoRomano2 n
            | n == 1 = "I"
            | n <= 3 = "I" ++ digitoRomano2 (n-1)
            | n == 4 = "IV"
            | n >= 5 = "V" ++ digitoRomano2 (n-5)
            | n == 9 = "IX"

main :: IO ()
main =
    print (digitoRomano '8')