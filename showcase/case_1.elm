-- This is a single line comment

{- This is a multi-line comment.
   It can span multiple lines.
-}

{- It is possible to {- nest -} multi-line comments -}

hello : String
hello =
    "Simple Test"

hypotenuse : Float -> Float -> Float
hypotenuse a b =
    sqrt (a^2 + b^2)

multiplyBy2 : number -> number
multiplyBy2 =
    (*) 2

absoluteValue : Int -> Int
absoluteValue number =
    if number < 0 then negate number else number

book : { title : String, author : String, pages : Int }
book =
    { title = "Steppenwolf"
    , author = "Hesse"
    , pages = 237 
    }

title : String
title =
    book.title

author : String
author =
    .author book

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

depth : Tree a -> Int
depth tree =
    case tree of
        Empty -> 0
        Node value left right -> 1 + max (depth left) (depth right)