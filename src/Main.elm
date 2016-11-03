module Main exposing (..)

import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import Html.App exposing (beginnerProgram)


main =
    beginnerProgram
        { model = 0, update = update, view = view }


type alias Model =
    Int


type Msg
    = Add1
    | Sub1


update : Msg -> Model -> Model
update msg model =
    case msg of
        Add1 ->
            model + 1

        Sub1 ->
            model - 1


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Sub1 ] [ text "-" ]
        , text (toString model)
        , button [ onClick Add1 ] [ text "+ " ]
        ]
