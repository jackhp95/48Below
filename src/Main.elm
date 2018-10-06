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
        [ img [ class "w-60 center", src "logo.png" ] []
        , h1 [ class "purple tc" ]
            [ text "Welcome to 48Below" ]
        , div
            [ class "dn-ns" ]
            [ a [ href "sms:15738251289;?&body=48below", class "bg-purple flex-auto tc link pa3 ma3 br2 white grow f4" ]
                [ text "Find events" ]
            ]
        , div
            [ class "dn dib-ns" ]
            [ text "recieve a text from us! "
            , input
                [ type_ "tel", placeholder "Mobile Number" ]
                []
            , button
                [ class "button-reset bn pa3 ma0 bg-purple white" ]
                [ text "Get Started!" ]
            ]
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
