isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = null [x | x <- [2..n-1], mod n x == 0] 

revInt :: Int -> Int
revInt n = read (reverse (show n))::Int

xor :: Bool -> Bool -> Bool
xor a b = (a || b) && not (a && b)

primeTime :: Int -> Int -> [Int]
primeTime s e = [x | x <- [s..e], xor (isPrime x) (isPrime (revInt x))]
