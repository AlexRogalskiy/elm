module Main exposing (..)

import Html exposing (text)
import List

foo =
    [ "one", "two", "three" ]

type alias Person =
    { name: String
    ,age : Int
    }

people = 
    [ { name = "Legoglas", age = 2931 }
    , { name = "Gimli", age = 139 }
    ]

names : List Person -> List String
names peeps =
    List.map (\peep -> peep.name) peeps

findPerson : String -> List Person -> Maybe
    Person

findPerson name peeps = List.foldl
    (\peep memo ->
        case memo of
            Just _ ->
                memo
            Nothing ->
                if peep.name == name then
                    Just peep
                else
                    Nothing
    )
    Nothing
    peeps

main =
    --text <| toString <| foo
    --text <| toString <| names people
    text <| toString <| findPerson "Legoglas" people