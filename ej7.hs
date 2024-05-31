funny:: Bool -> Bool -> Bool -> Bool
funny x y z 
    | x > z = True 
    | x >= y = False 
    | otherwise = True

funny2 :: Ord a => a -> a -> a -> Bool
funny2 x y z =
    (x > z) || (x < y) 