module App.Model exposing (..)

import App.Counter.Model
import App.Messages exposing (Msg)


type alias Model =
    { dev : Bool
    , counter : App.Counter.Model.Model
    , counter2 : App.Counter.Model.Model
    }


{-| We can use abstract type if it is constructed with Elm's primitive values.
-}
type alias Flags =
    { dev : Bool
    , counter : Int
    , counter2 : Int
    }


init : Flags -> ( Model, Cmd Msg )
init flags =
    let
        { dev, counter, counter2 } =
            flags
    in
    ( Model dev counter counter2, Cmd.none )
