-- Curried function to filter and then fold
filterAndFold :: (a -> Bool) -> (b -> a -> b) -> b -> [a] -> b
filterAndFold filterFunc foldFunc acc xs = foldl foldFunc acc (filter filterFunc xs)

-- Main function to compute the sum of all odd numbers
main :: IO ()
main = do
  let filterOdd x = x `mod` 2 == 1  -- Filtering odd numbers
  let sumFunc acc x = acc + x       -- Summing the values
  let result = filterAndFold filterOdd sumFunc 0 [1, 2, 3, 4, 5, 6]
  print result
