-- Exercise 8: Pattern Matching for List Recursion 

listLength :: [a] -> Int 

listLength [] = 0 

listLength (_:xs) = 1 + listLength xs 

  

-- Test cases 

main = do 

    print (listLength [1, 2, 3]) -- Output: 3 

    print (listLength [])        -- Output: 0 

    print (listLength [5, 6])    -- Output: 2 
