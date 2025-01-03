-- Exercise 1: Simple Pattern Matching with Integers 

isZero :: Int -> String 

isZero 0 = "Zero" 

isZero _ = "Not Zero" 

  

-- Test cases 

main = do 

    print (isZero 0)    -- Output: "Zero" 

    print (isZero 5)    -- Output: "Not Zero" 

    print (isZero (-1)) -- Output: "Not Zero" 

 
