-- Curried function applyOp
applyOp :: (Int -> Int -> Int) -> [Int] -> Int
applyOp op = foldl1 op

-- Function to compute the sum of squares of all even numbers
sumOfSquaresOfEvens :: [Int] -> Int
sumOfSquaresOfEvens = applyOp (+) . map (^2) . filter even

-- Main function for execution
main :: IO ()
main = print $ sumOfSquaresOfEvens [1, 2, 3, 4, 5, 6]
