module Arith3Broken where 
three :: Integer
three = 1 + 2 
ten:: Integer
ten = 10




main :: IO()
main = do
    print three
    print ten
    print ((+) 0 blah)
        where 
        blah :: Integer    
        blah = negate 1
   
 