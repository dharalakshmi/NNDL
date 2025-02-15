isPrime :: Integer -> Bool
isPrime n
 | n <= 1 = False
 | otherwise = null [x | x <- [2..n-1], n `mod` x == 0]
main :: IO ()
main = do
 putStrLn "Enter a number to check if it's prime:"
 input <- getLine
 let num = read input :: Integer
 if isPrime num
 then putStrLn "Yes, it's a prime number!"
 else putStrLn "No, it's not a prime number."