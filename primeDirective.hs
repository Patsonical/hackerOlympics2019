isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = null [x | x <- [2..n-1], mod n x == 0] 

primeDirective :: Int -> Int -> [Int]
primeDirective s e = [x | x <- [s..e], isPrime x]
