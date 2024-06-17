ordenTriple :: (Int,Int,Int) -> (Int, Int,Int)
ordenTriple (a,b,c) 
    |(a >= b) && (b >= c) = (a,b,c)   -- abc , bac , acb bca cba cab
    |(b >=a ) && (a>=c) = (b,a,c)
    |(a >= c) && (c>= b) = (a,c,b)
    |(b >= c) && (c>= a) = (b,c,a)
    |(c >= a) && (a>= b) = (c,a,b)
    |(c >= b) && (b>= c) = (c,b,a)
    |otherwise = (a,b,c)


    