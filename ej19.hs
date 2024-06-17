minMax :: (Int , Int) -> String
minMax (n,m)
     | n > m = show " N es el maximo, M es el minimo"
     | n < m = show " M es el maximo, N es el minimo"
     | otherwise = show "Son iguales"

