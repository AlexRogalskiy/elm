import Html exposing (Html, text)
import String

main =
    view "Hello, world!"

triple : String -> String
triple =
    String.repeat 3

view : String -> Html msg
view message = 
    --text (String.repeat 3 (String.toUpper message))
    message
        |> String.toUpper
        |> \s -> s ++ "!! "
        |> triple
        |> text