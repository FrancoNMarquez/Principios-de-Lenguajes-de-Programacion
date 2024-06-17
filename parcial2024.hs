{--

Sum(k,c) = Sumatoria desde x=1 hasta K

 x^3 + (5*c)
-------------
 (x*2)+C - 1

--}

sumatoria:: Int -> Int -> Float
sumatoria k c
    | k == 1 = fromIntegral (k^3 + (5*c)) / fromIntegral ((k*2)+c-1)
    | otherwise = (fromIntegral (k^3 + (5*c)) / fromIntegral ((k*2)+c-1) )+ sumatoria (k-1) c
    

tParcial :: (Int,Int) -> Int -> String
tParcial (n,m) c  
    | n == m && n>=1 && c>0 = show n ++ "\t" ++ show (sumatoria n c) ++ "\n"
    | n < m && n>=1 && c>0 = show n ++"\t"  ++ show (sumatoria n c) ++ "\n"++ tParcial (n+1,m) c
    | otherwise = "Error al ingresar los datos" 