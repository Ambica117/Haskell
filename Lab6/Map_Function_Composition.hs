-- Define a function to filter, map, and fold
filterMapFold :: [Int] -> Int
filterMapFold xs = foldl (*) 1 (map (^2) (filter odd xs))

-- Main function for execution
main :: IO ()
main = do
  let inputList = [1, 2, 3, 4, 5, 6]  -- Input list
  let result = filterMapFold inputList -- Apply the function
  putStrLn $ "The result is: " ++ show result
