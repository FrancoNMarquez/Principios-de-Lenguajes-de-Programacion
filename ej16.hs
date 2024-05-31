hacerEspacios :: Int -> String 
hacerEspacios n 
    | n == 0 = ""
    | n > 0  = " " ++ hacerEspacios (n-1)

main :: IO ()
main = 
    print(hacerEspacios 4)