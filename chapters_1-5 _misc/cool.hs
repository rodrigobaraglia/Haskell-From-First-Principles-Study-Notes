module Cool where

data Style = Cool | Square deriving (Eq, Show)

fonz:: Style
fonz = Cool

yaCool:: Style -> IO()
yaCool style =
    if cool style 
        then putStrLn "I see you got swag"
    else
        putStrLn "You're trying too hard, dude"
    where cool personality = personality == Cool 