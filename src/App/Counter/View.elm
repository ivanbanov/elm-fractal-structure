module App.Counter.View exposing (..)

import Html exposing (text, div, button, Html)
import Html.Events exposing (onClick)
import App.Counter.Model exposing (..)
import App.Counter.Messages exposing (..)


view : Model -> Html Msg
view model =
    div
        []
        [ button [ onClick Up ] [ text "+" ]
        , text (Basics.toString model)
        , button [ onClick Down ] [ text "-" ]
        ]
