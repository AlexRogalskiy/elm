module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

type alias Dog = 
    { name: String
    , age: Int
    }
type alias Ship = 
    { name: String
    , model: String
    , cost: Int
    }

ships =
    [ { name = "1", cost = 1 }
    , { name = "2", cost = 2 }
    , { name = "3", cost = 3 }
    ]

dog =
    { name = "Spock"
    , age = 2
    }

renderDog : Dog -> String
renderDog dog =
    dog.name ++ ", " ++ (toString dog.age)

renderShip ship =
    li []
        [ text ship.name
        , text ", "
        , b []
            [ text <| toString ship.cost]
        ]

renderShips ships =
    div
        [ style
            [ ("font-family", "-apple-system")
            , ("padding", "1em")
            ]
        ]
        [ h1 [] [ text "Ships" ]
        , ul [] (List.map renderShip ships)
        ]

main =
    --text <| toString <| .age dog
    --text <| renderDog dog
    --text <| toString <| ships
    renderShips ships