-- Define the curried composeFilterMap function
composeFilterMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
composeFilterMap filterFunc mapFunc = map mapFunc . filter filterFunc

-- Main function to apply the example
main :: IO ()
main = do
  let result = composeFilterMap (<= 5) (^2) [3, 7, 2, 8, 4, 6]
  print result
