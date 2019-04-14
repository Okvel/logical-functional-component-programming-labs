f :: Float -> Float -> Float
f n m = (2**n + 3**n - 4**(n - m^2)) / (sin (exp (cos (n - m))^2) + tan (sqrt (n^3 - pi)))

main = do
    putStrLn("Enter n")
    n <- getLine
    putStrLn("Enter m")
    m <- getLine
    putStr("f(n,m) = ")
    -- n = 2.0 m = 1.0 f = -7.7
    print (f (read n) (read m))