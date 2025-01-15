-- Function to filter, square, and sum numbers less than or equal to 10
sumOfSquaresLessThanOrEqualTo10 :: [Int] -> Int
sumOfSquaresLessThanOrEqualTo10 = sum . map (^2) . filter (<= 10)

-- Main function for execution
main :: IO ()
main = print $ sumOfSquaresLessThanOrEqualTo10 [5, 12, 9, 20, 15]
