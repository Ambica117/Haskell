-- Function to compute the sum of string lengths
sumStringLengths :: [String] -> Int
sumStringLengths = foldl (+) 0 . map length

-- Main function to run the example
main :: IO ()
main = do
  let result = sumStringLengths ["hello", "world", "haskell"]
  print result
