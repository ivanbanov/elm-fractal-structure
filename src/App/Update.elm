module App.Update exposing (..)

import App.Counter.Update as Counter
import App.Messages exposing (..)
import App.Model exposing (Model)
import Utils exposing (log)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        logMsg =
            log model.dev "MESSAGE: "
    in
    case logMsg msg of
        NoOp ->
            ( model, Cmd.none )

        CounterMsg msg ->
            let
                ( model_, cmd ) =
                    Counter.update msg model.counter
            in
            ( { model | counter = model_ }
            , Cmd.map CounterMsg cmd
            )

        Counter2Msg msg ->
            let
                ( model_, cmd ) =
                    Counter.update msg model.counter2
            in
            ( { model | counter2 = model_ }
            , Cmd.map Counter2Msg cmd
            )
