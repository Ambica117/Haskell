-- Exercise 3: Pattern Matching with Tuples 

sumTuple :: (Int, Int) -> Int 

sumTuple (x, y) = x + y 

  

-- Test cases 

main = do 

    print (sumTuple (3, 5))   -- Output: 8 

    print (sumTuple (10, 20)) -- Output: 30 
