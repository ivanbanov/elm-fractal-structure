module App.View exposing (..)

import App.Counter.View as Counter
import App.Messages exposing (..)
import App.Model exposing (Model)
import Html exposing (Html, div, text)


view : Model -> Html Msg
view model =
    div []
        [ text "Try pressing up & down arrow keys on keyboard"
        , Html.map CounterMsg (Counter.view model.counter)
        , Html.map Counter2Msg (Counter.view model.counter2)
        ]
