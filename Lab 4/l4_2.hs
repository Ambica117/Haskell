multiplyElements :: Num a => [a] -> a -> [a]
multiplyElements xs n = [x * n | x <- xs]

main :: IO ()
main = do
    let inputList = [1, 2, 3]
    let multiplier = 2
    let output = multiplyElements inputList multiplier
    print output
