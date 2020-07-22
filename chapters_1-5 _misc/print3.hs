module Print3 where

socrates:: String
socrates = "Sócrates"
question:: String
question = "¿Qué es"
topic1:: String
topic1 = "la justicia"

identity':: a -> a
identity' x = x

main:: IO ()
main = do
    putStrLn socratesAsks
    where socratesAsks = concat [socrates, ": ", question, " ", topic1, "?"]

