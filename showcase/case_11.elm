module Main exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (onClick)

-- Main

--main = div [] [ text "Hello, world!" ]
main = beginnerProgram
    {
    model = 0
    , update = update
    , view = view
    }

-- Model

type alias Model = Int

-- Messages

type Msg = Inc | Dec

-- Update

update : Msg -> Model -> Model
update message model =
    case message of
        Inc -> model + 1
        Dec -> model - 1

-- View

view : Model -> Html Msg
view model =
    div [] 
    [
    h1 [] [ text "Counter: " ]
    , div [] [ text (toString model) ]
    , button [onClick Inc] [ text "Increment" ]
    , button [onClick Dec] [ text "Decrement" ]
    ]