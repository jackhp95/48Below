module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "w-100 vh-100 flex flex-wrap items-center justify-center" ]
        [ img [ class "w-60 center", src "/logo.png" ] []
        , h1 [ class "purple tc" ] [ text "Welcome to 48Below" ]
        , a [ href "sms:15733408423;?&body=48below", class "bg-purple flex-auto tc link pa3 ma3 br2 white grow f4" ]
            [ text "Find events" ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
