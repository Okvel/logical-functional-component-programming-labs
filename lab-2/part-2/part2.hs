y :: Float -> Float -> Float
y x a = 
    if x > 1 && x < 3 
        then 2 * x + a
    else if x > 3 
        then a**(x-3)
    else
        0

main = do
    putStrLn("Enter x")
    x <- getLine
    putStrLn("Enter a")
    a <- getLine
    putStr("y(x) = ")
    print (y (read x) (read a))