-- Exercise 2: Pattern Matching on Lists 

countElements :: [a] -> Int 

countElements [] = 0 

countElements (_:xs) = 1 + countElements xs 

  

-- Test cases 

main = do 

    print (countElements [1, 2, 3]) -- Output: 3 

    print (countElements [])        -- Output: 0 

    print (countElements [5])       -- Output: 1 
