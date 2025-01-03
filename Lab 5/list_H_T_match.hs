-- Exercise 5: Pattern Matching with Lists (Head and Tail)
firstElement :: Show a => [a] -> String
firstElement [] = "Empty list"
firstElement (x:_) = "First element is " ++ show x

-- Test cases
main = do
    print (firstElement [1, 2, 3])        -- Output: "First element is 1"
    print (firstElement ([] :: [Int]))    -- Output: "Empty list"

