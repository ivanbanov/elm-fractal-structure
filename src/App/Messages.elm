module App.Messages exposing (Msg(..))

import App.Counter.Messages


type Msg
    = NoOp
    | CounterMsg App.Counter.Messages.Msg
    | Counter2Msg App.Counter.Messages.Msg
