type Picture = [[Char]]

superimposeChar :: Char -> Char -> Char
superimposeChar '.' '.' = '.'
superimposeChar _   _   = '#'

superimposeLine :: [Char] -> [Char] -> [Char]
superimposeLine a b = [ superimposeChar a b | (a,b) <- zip a b ]

superimpose :: Picture -> Picture -> Picture
superimpose a b = [ superimposeLine a b | (a,b) <- zip a b  ]

pic1 :: Picture
pic1 = [ ".##.",".##.",".##." ]
pic2 :: Picture
pic2 = [ ".#.#",".#.#",".#.#" ]

main :: IO ()
main = do
 print $ superimpose pic1 pic2
