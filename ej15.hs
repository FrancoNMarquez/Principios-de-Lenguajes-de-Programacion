duplicar :: String -> Int -> String 
duplicar s n 
    | n == 0 = ""
    | n > 0  = s ++ duplicar s (n-1)

main :: IO ()
main = 
    print(duplicar "Hola" 4)