ej27 :: (Int,Int,Int) -> String
ej27 (m, n, p)
    | m <= n && multiplo m p = show m ++ " " ++ ej27 (m+1, n, p)
    | m <= n = ej27 (m+1, n, p)
    | otherwise = ""

multiplo :: Int -> Int -> Bool
multiplo i j = mod i j == 0 
