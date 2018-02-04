-- List comprehensions can be translated into expressions involving map, filter and concat by the following equations.
[x | x <- xs] = xs
[f x | x <- xs] = map f xs
[e | x <- xs, p x , ... ] = [e | x <- filter p xs , ... ]
[e | x <- xs, y <- ys , ... ] = concat [[e | y <- ys ,..] | x <- xs]

-- Translate the expressions
[m*m | m <- [1 .. 10]]
[m*m | m <- [1 .. 10] , m*m < 50]
[x+y | x <- [1 .. 4] , y <- [2 .. 4] , x > y]
[x:p | x <- xs , p <- perms (xs\\[x]) ]
-- using these equations ; you will need to define some auxiliary functions as a part of your translation.
