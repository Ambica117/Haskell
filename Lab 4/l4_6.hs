averageMarks :: (String, Int, [Int]) -> (String, Double)
averageMarks (name, _, marks) = (name, fromIntegral (sum marks) / fromIntegral (length marks))

main :: IO ()
main = do
    let student = ("Alice", 1, [80, 90, 70])
    let output = averageMarks student
    print output
