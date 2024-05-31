justificarCentro :: Int -> String -> String 
justificarCentro n st
    | length st > n = "La palabra ya es mas grande que la longitud"
    | even (diferencia n st) = agregarEspacios (diferencia n st) st
    | otherwise = "No se puede centrar con esa longitud."
    where 
        diferencia n st = n - length st 
        agregarEspacios n st 
            | n == 0 = st 
            | n > 0  = " " ++ agregarEspacios (n-2) st ++ " "
main :: IO ()
main =
    print(justificarCentro 10 "Hola")