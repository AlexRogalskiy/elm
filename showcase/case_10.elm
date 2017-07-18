import Html exposing (text)
import Json.Decode exposing (Decoder, decodeString, list, int)

-- Result x a = Err x | Ok a

num = "4"
nums = "[1,2,4,5,6,7]"

numbersDecoder : Decoder (List Int)
numbersDecoder =  list int

--decoded : Result String Int
--decoded = decodeString int num
decoded : Result String (List Int)
decoded = decodeString numbersDecoder nums

main = text (toString decoded)