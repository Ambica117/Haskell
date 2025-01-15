-- Function to compose two functions
compose :: (b -> c) -> (a -> b) -> (a -> c)
compose f g = \x -> f (g x)

-- Multiply by 2
multiplyBy2 :: Int -> Int
multiplyBy2 x = x * 2

-- Subtract 3
subtract3 :: Int -> Int
subtract3 x = x - 3

-- Main function: Compose and map the composed function over the list
main :: IO ()
main = do
  let composedFunction = compose multiplyBy2 subtract3
  let result = map composedFunction [1, 2, 3, 4]
  print result
