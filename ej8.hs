allDiferent :: Int -> Int -> Int -> Bool
allDiferent x y z 
    | (x /= y) && (y /= z) && (x /=z) = True 
    | otherwise = False