-- Exercise 4: Pattern Matching on a Custom Data Type  

data Color = Red | Green | Blue 

  

describeColor :: Color -> String 

describeColor Red = "This is Red" 

describeColor Green = "This is Green" 

describeColor Blue = "This is Blue" 

  

-- Test cases 

main = do 

    print (describeColor Red)   -- Output: "This is Red" 

    print (describeColor Green) -- Output: "This is Green" 

    print (describeColor Blue)  -- Output: "This is Blue" 

 
