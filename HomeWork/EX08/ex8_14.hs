-- Define a wc fucntion which copies input to output until an empty line is raed. The program should then output the number of lines, words and characters that have been copied. [wc is a standard unix command line program.]
wc :: Integer -> Integer -> Integer -> IO()
wc li wo ch  =
  do line <- getLine
     if line == ""
       then putStrLn (show li ++ " lines "++ show wo ++ " words "++ show ch ++ " chars "  )
       else do
               wc (li+1) (wo + fromIntegral(length(words line))) (ch + fromIntegral(sum (map length (words line))))

main :: IO ()
main = do
  wc 0 0 0
