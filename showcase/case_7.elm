module Main exposing (..)

import Html exposing (..)

items =
    [ "Green Eggs", "Green Ham" ]

main =
    div []
        [ 
         h1 [] [ text <| "Items" ]
        , text <| toString <| items
        ]