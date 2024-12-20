swapTuple :: (a, b) -> (b, a)
swapTuple (a, b) = (b, a)

main :: IO ()
main = do
    let input = (1, "hello")
    let output = swapTuple input
    print output
