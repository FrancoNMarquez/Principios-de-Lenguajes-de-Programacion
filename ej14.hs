entreLineas :: String -> String -> String -> String
entreLineas a b c = a ++ "\n" ++ b ++ "\n" ++ c

main =
    putStr (entreLineas "aaa" "bbb" "ccc")