-- Definir en Haskell una funcion tal que, dados tres pares de enteros, debe devolver en un
-- cuarto par el menor y el mayor elemento de los pares dados. Por ejemplo para la entrada
-- (2,4) (3,5) (4,1) la salida debe ser (1,5).

pares :: (Int,Int) -> (Int,Int) -> (Int,Int) -> (Int, Int)
pares (a,b) (c,d) (e,f) = (menor (a,b) (c,d) (e,f), mayor(a,b) (c,d) (e,f))
    where
        mayor ::(Int,Int) -> (Int,Int) -> (Int,Int) -> Int
        mayor (a,b) (c,d) (e,f)
            |(a >= b) && (a >= c) &&(a >= d) && (a >= e)&&(a >= f) = a
            |(b >= a) && (b >= c) &&(b >= d) && (b >= e)&&(b >= f) = b
            |(c >= b) && (c >= a) &&(c >= d) && (c >= e)&&(c >= f) = c
            |(d >= b) && (d >= c) &&(d >= a) && (d >= e)&&(d >= f) = d
            |(e >= b) && (e >= c) &&(e >= d) && (e >= a)&&(e >= f) = e
            |(f >= b) && (f >= c) &&(f >= d) && (f >= e)&&(f >= a) = f
            |otherwise = 0
        
        menor::(Int,Int) -> (Int,Int) -> (Int,Int) -> Int
        menor (a,b) (c,d) (e,f)
            |(a <= b) && (a <= c) &&(a <= d) && (a <= e)&&(a <= f) = a
            |(b <= a) && (b <= c) &&(b <= d) && (b <= e)&&(b <= f) = b
            |(c <= b) && (c <= a) &&(c <= d) && (c <= e)&&(c <= f) = c
            |(d <= b) && (d <= c) &&(d <= a) && (d <= e)&&(d <= f) = d
            |(e <= b) && (e <= c) &&(e <= d) && (e <= a)&&(e <= f) = e
            |(f <= b) && (f <= c) &&(f <= d) && (f <= e)&&(f <= a) = f
            |otherwise = 0


paresGPT :: (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int)
paresGPT (a, b) (c, d) (e, f) = (minimum [a, b, c, d, e, f], maximum [a, b, c, d, e, f])
