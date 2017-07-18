module Main exposing (..)

import Html exposing (text)
import List exposing (head)

--type Maybe = Nothing | Just x
favoriteNumbers = [1, 2, 3, 4, 5]

firstFavoriteNumber = head favoriteNumbers

renderedFavoriteNumber =
    case firstFavoriteNumber of
        Nothing -> "Sorry, no favorite numbers"
        Just val -> "Your favorite number is " ++ (toString val)

main = text <| toString renderedFavoriteNumber