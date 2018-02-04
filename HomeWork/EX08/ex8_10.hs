-- Write an I/O program which will read a line of input and test whether the input is a palindrome. The program should 'prompt' for its input and also output an appropriate message after testing.

palindrome :: IO()
palindrome = do line <- getLine
                if line == reverse line
                   then putStr "palindrome\n"
                   else putStr "Not palindrome\n"
main :: IO ()
main = do
palindrome 
