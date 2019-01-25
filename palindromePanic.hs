isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = null [x | x <- [2..n-1], mod n x == 0] 

revInt :: Int -> Int
revInt n = read (reverse (show n))::Int

palindromePanic :: Int -> Int 
palindromePanic n
	| n == revInt n = head [x | x <- [n+1..], (isPrime x) && (x == revInt x)]
	| otherwise = error "Input is not a palindrome."
