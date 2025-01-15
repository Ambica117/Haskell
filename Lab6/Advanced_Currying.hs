-- Define the curried applyOp function
applyOp :: (Int -> Int -> Int) -> [Int] -> Int
applyOp op [x, y] = op x y
applyOp _ _ = error "Invalid input list. Must contain exactly two numbers."

-- Main function to handle IO
main :: IO ()
main = do
  -- Prompt user to choose an operation
  putStrLn "Choose an operation (+ or *):"
  operation <- getLine
  
  -- Prompt user to input two numbers
  putStrLn "Enter the first number:"
  input1 <- getLine
  putStrLn "Enter the second number:"
  input2 <- getLine
  
  -- Convert inputs to integers
  let num1 = read input1 :: Int
  let num2 = read input2 :: Int
  
  -- Choose the appropriate operation
  let op = case operation of
        "+" -> (+)
        "*" -> (*)
        _   -> error "Invalid operation. Please choose either + or *."
  
  -- Apply the operation using applyOp
  let result = applyOp op [num1, num2]
  
  -- Print the result
  putStrLn $ "The result is: " ++ show result
