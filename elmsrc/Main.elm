-- elmsrc/Main.elm
module Main exposing (..)

-- Importing functions that generate HTML
import Html exposing (Html, button, div, text)
-- Handling the click event
import Html.Events exposing (onClick)

-- Defining two possible values
type Msg = Increment | Decrement

-- This will be the rendered HTML (an empty div)
view : a -> Html Msg
view model =
    div []
        [ button [ onClick Decrement] [ text "-" ]
        , div [] [text (toString model) ]
        , button [ onClick Increment] [ text "+" ]
        ]

-- The update function will be used to update
-- the rendered HTML
update : Msg -> number -> number
update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1

-- This is what puts everything together
main : Program Never number Msg
main  =
      Html.beginnerProgram { model = 0 , view = view , update = update }
