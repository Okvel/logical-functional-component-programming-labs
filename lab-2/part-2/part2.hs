y x a
    | x < 0 = a**x
    | (1 <= x) && (x <= 3) = tan x
    | otherwise = 0

main = do
    putStrLn("Enter x")
    x <- getLine
    putStrLn("Enter a")
    a <- getLine
    putStr("y(x) = ")
    -- x = -2, a = 4 -> y = 0.0625
    -- x = 1 -> y = 1.5574 
    print (y (read x) (read a))