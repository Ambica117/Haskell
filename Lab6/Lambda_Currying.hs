-- Curried function to filter and map
filterAndMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
filterAndMap filterFunc mapFunc xs = map mapFunc (filter filterFunc xs)

-- Main function to run the example
main :: IO ()
main = do
  let result = filterAndMap even (*2) [1, 2, 3, 4, 5, 6]
  print result
