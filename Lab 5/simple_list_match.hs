-- Exercise 6: Pattern Matching with Simple List Processing
firstTwoElements :: [a] -> [a]
firstTwoElements (x:y:_) = [x, y]
firstTwoElements xs = xs

-- Test cases
main = do
    print (firstTwoElements [1, 2, 3])      -- Output: [1, 2]
    print (firstTwoElements [10])           -- Output: [10]
    print (firstTwoElements ([] :: [Int]))  -- Output: []

