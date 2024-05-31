charToInt :: Char -> Int
charToInt c = fromEnum c - fromEnum '0'

main :: IO ()
main =
    print (charToInt '6')