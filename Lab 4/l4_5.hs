reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

main :: IO ()
main = do
    let inputList = [1, 2, 3]
    let output = reverseList inputList
    print output

