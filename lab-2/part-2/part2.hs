y x a
    | (x > 1) && (x < 3) = (2 * x + a)
    | x > 3 = a**(x-3)
    | otherwise = 0

main = do
    putStrLn("Enter x")
    x <- getLine
    putStrLn("Enter a")
    a <- getLine
    putStr("y(x) = ")
    print (y (read x) (read a))