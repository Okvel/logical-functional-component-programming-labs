f :: Float -> Float -> Float
f n m = abs (log (sqrt (2 + 0.2**n + 0.4**m)) + sin (sqrt (n^2 + m^2)) - cos (exp (cos (n + pi))))

main = do
    putStrLn("Enter n")
    n <- getLine
    putStrLn("Enter m")
    m <- getLine
    putStr("f(n,m) = ")
    -- n = 2.0 m = 3.0 f = 0.13023
    print (f (read n) (read m))