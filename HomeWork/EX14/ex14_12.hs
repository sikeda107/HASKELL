-- A tree is reflected by swapping left and right sub-trees, recursively. Define a function to reflect an NTree. What is the result of reflecting twice, reflect . reflect.

data NTree = NilT |
             Node Integer NTree NTree
                   deriving (Show,Eq,Read,Ord)

sumTree :: NTree -> Integer
sumTree NilT = 0
sumTree (Node n t1 t2 ) = n + sumTree t1 + sumTree t2

reflectTree :: NTree -> NTree
reflectTree NilT = NilT
reflectTree (Node n t1 t2 ) =

main :: IO()
main = do
 print $ sumTree (Node 3 (Node 4 NilT NilT) NilT)
