module App.Subscriptions exposing (..)

import App.Counter.Subscriptions as Counter
import App.Messages exposing (..)
import App.Model exposing (Model)


{-| This is how you can organize subscribtions from child modules.
-}
subscriptions : Model -> Sub Msg
subscriptions model =
    let
        counterSub =
            Counter.subscriptions model.counter

        counter2Sub =
            Counter.subscriptions model.counter2
    in
    Sub.batch
        [ Sub.map CounterMsg counterSub
        , Sub.map Counter2Msg counter2Sub
        ]
