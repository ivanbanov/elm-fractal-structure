module App.Messages exposing (Msg(..))

import App.Counter.Messages as Counter


type Msg
    = NoOp
    | CounterMsg Counter.Msg
    | Counter2Msg Counter.Msg
