module Learn where

update:: String -> String -> String -> String
update ob prop val = "Property " ++ prop ++ " in object " ++ ob ++ " updated to " ++ val

userProfile:: String
userProfile = "userProfile" 
status:: String
status = "status"
online:: String
online = "online"
busy:: String
busy = "busy"
away:: String
away = "away"
offline:: String
offline = "offline"

updateProfile:: String -> (String -> String)
updateProfile = update userProfile
setStatus:: String -> String
setStatus = updateProfile status 

greetWorld:: IO ()
greetWorld = print ("hello " ++ world)
    where world = "world"

greetWorld':: IO ()
greetWorld' = let world = "Mondo!!!"
              in print ("hello " ++ world)

greet:: String -> IO ()
greet x = putStrLn ("Hello, " ++ x ++ "!" )

greet':: String -> IO ()
greet' name = 
    (\greetName -> print greetName) ("Hello, " ++ name)


identity:: a -> a
identity ens = 
    (\being -> being) (ens)