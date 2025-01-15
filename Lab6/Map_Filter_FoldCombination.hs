-- Function to filter, double and compute the product using foldl
filterDoubleAndProduct :: [Int] -> Int
filterDoubleAndProduct xs = foldl (*) 1 (map (*2) (filter (<= 10) xs))

-- Main function to run the example
main :: IO ()
main = do
  let result = filterDoubleAndProduct [5, 12, 9, 20, 15]
  print result
