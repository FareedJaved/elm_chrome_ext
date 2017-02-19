
-- elmsrc/Main.elm
module Main exposing (..)

-- This line imports functions that generate HTML
import Html exposing (Html, button, div, text)

-- Html.App is slightly more complicated but you can think of
-- it as our supervisor for our little Elm app
-- import Html.App as Html

-- This will be the rendered HTML (an empty div)
view : a -> Html b
view model =
    div []
        []

-- The update function will be used to update
-- the rendered HTML
update : a -> b -> number
update msg model =
  case msg of
    _ ->
      0

-- This is what puts everything togetehr
main : Program Never number b
main  =
      Html.beginnerProgram { model = 0 , view = view , update = update }
