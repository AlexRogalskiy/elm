import Html exposing (..)

type alias Resource =
    {
    name: String
    , link : String
    , isComplete : Bool
    , id : Int
    }

type alias Resources =
    List Resource

resources = 
    [{
    name = "Docs"
    , isComplete = False
    , link = ""
    , id = 1
    }
    , {
    name = "Docs2"
    , isComplete = False
    , link = ""
    , id = 1
    }
    ]

resourceList : Resources -> List(Html msg)

resourceList res =
    List.map
        (\s -> div [] [ text s.name ])
        res

view : Resources -> Html msg
view res =
    div [] ( resourceList res )

view2 res =
    res.name
    |> text

main =
    view resources