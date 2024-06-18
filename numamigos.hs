--Numeros amigos, n y m son numeros amigos si la sumatoria de los divisiores propios de n es igual a m y
--si la sumatoria de lso divisores propios de m es igual a n

numAmigos:: Int -> Int -> Bool
numAmigos n m 
    |(dn == m )&& (dm == n) = True
    |otherwise = False
    where
        dn = sumaDivPropios n n
        dm = sumaDivPropios m m

sumaDivPropios:: Int -> Int -> Int
sumaDivPropios n c
    |n==c = sumaDivPropios (n-1) c
    |(n>0)&& ((c `mod` n)==0) = n + sumaDivPropios (n-1) c
    |(n>0)&& ((c `mod` n)/=0) =sumaDivPropios (n-1) c
    |otherwise = 0

