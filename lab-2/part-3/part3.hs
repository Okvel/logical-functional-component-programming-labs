main = do
    let test = ("$", (2, 3), 4, 5, "a", ("e", "r"), "g", "%", "v", (10, "b"))
    putStr("Initial tuple:    ")
    print(test)
    putStr("Tuple after swap: ")
    print (swap test)

frst :: (a,b,c,d,e,f,g,h,i,j) -> a
frst (x,_,_,_,_,_,_,_,_,_) = x
scnd :: (a,b,c,d,e,f,g,h,i,j) -> b
scnd (_,x,_,_,_,_,_,_,_,_) = x
thrd :: (a,b,c,d,e,f,g,h,i,j) -> c
thrd (_,_,x,_,_,_,_,_,_,_) = x
frth :: (a,b,c,d,e,f,g,h,i,j) -> d
frth (_,_,_,x,_,_,_,_,_,_) = x
ffth :: (a,b,c,d,e,f,g,h,i,j) -> e
ffth (_,_,_,_,x,_,_,_,_,_) = x
sxth :: (a,b,c,d,e,f,g,h,i,j) -> f
sxth (_,_,_,_,_,x,_,_,_,_) = x
snth :: (a,b,c,d,e,f,g,h,i,j) -> g
snth (_,_,_,_,_,_,x,_,_,_) = x
eigh :: (a,b,c,d,e,f,g,h,i,j) -> h
eigh (_,_,_,_,_,_,_,x,_,_) = x
nnth :: (a,b,c,d,e,f,g,h,i,j) -> i
nnth (_,_,_,_,_,_,_,_,x,_) = x
lst :: (a,b,c,d,e,f,g,h,i,j) -> j
lst (_,_,_,_,_,_,_,_,_,x) = x

swap :: (a,b,c,d,e,f,g,h,i,j) -> (j,b,c,d,e,f,g,h,i,a)
swap a = (lst a,scnd a,thrd a,frth a,ffth a,sxth a,snth a,eigh a,nnth a,frst a)