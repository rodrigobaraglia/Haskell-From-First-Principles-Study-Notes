module MoodSwings where
    
data Mood = Sad | Happy deriving Show

meh:: Mood 
meh = Sad

yay:: Mood
yay = Happy

swing:: Mood -> Mood
swing Sad = Happy
swing Happy = Sad

data Status = Online | Offline | Busy | Away deriving Show

changeStatus:: Integer -> Status
changeStatus s 
    | s == 1 = Online
    | s == 2 = Busy
    | s == 3 = Away
    | otherwise = Offline


setStatus:: Status -> String
setStatus stat = "User status is " ++ show stat

switchStatus:: Integer -> String
switchStatus code = setStatus $ changeStatus code

data User =  User {
                name:: String, 
                status:: Status, 
                phrase:: String, 
                location:: String
                } deriving Show

mkUsr:: String -> User
mkUsr usrName = User { 
    name = usrName, 
    status = Online, 
    phrase = "", 
    location = ""} 

usrStat:: User -> Integer -> User 
usrStat usr stat = usr {status = changeStatus stat}
checkUsr:: User -> String
checkUsr usr = setStatus $ status usr

statusUpdate:: User -> Integer -> String
statusUpdate usr statCode = checkUsr $ usrStat usr statCode




--Como se trabaja con key-value-pairs en Haskell? Cómo se modifica el valor de un key-value-pair?