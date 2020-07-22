f :: a -> a -> a 
f a b = a 
g :: a -> a -> a
g a b = b

h:: a -> b -> b
h a b = b 

sum1:: Int -> Int 
sum1 x = x + 1

times2:: Int -> Int
times2 x = x * 2


test x = sum1 $ times2 x 
test' = sum1 . times2

takeBool:: Bool -> Int 
takeBool b = 1
takeInt:: Int -> String
takeInt i = "hello"

-- comp:: p -> Bool -> String
comp = takeInt . takeBool 
comp' x = takeInt $ takeBool x

