filterEven :: [Int] -> [Int]
filterEven xs = filter odd xs

main :: IO ()
main = do
    let inputList = [1, 2, 3, 4, 5]
    let output = filterEven inputList
    print output
