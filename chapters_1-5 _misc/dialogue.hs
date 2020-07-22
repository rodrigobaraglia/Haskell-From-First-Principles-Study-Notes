

main:: IO ()
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Gusto en conocerte " ++ name ++ "\n ¿Querés que te cuente el cuento de la buena pipa?") 
    answer <- getLine
    putStrLn ("you said " ++ answer) 