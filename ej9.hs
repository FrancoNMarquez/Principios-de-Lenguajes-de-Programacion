allDiferent :: Int -> Int -> Int -> Bool
allDiferent n m p = ( n /= m) && (m /= p )

main :: IO ()
main =
    print (allDiferent 3 2 3)