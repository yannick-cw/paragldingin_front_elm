module View.TagList exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.Model exposing (..)
import Html.Events exposing (onClick)
import Css exposing (
        flexStart
        , displayFlex
        , alignItems
        , padding
        , px
        , marginBottom
        , marginLeft
        , flexDirection
        , row
        , flexWrap
        , maxHeight
        )

styles =
    Css.asPairs >> Html.Attributes.style

view : List Tag -> Html Msg
view tags =
    ul [ styles
        [ padding (px 0)
        , displayFlex
        , flexDirection Css.column
        , flexWrap Css.wrap
        , maxHeight (px 200)
        ]
     ]
     (tags |> List.map tagToLi)


tagToLi : Tag -> Html Msg
tagToLi tag =
    li
        [ styles
            [ displayFlex
            , alignItems flexStart
            , marginBottom (px 5)
            ]
        ]
        [ button [ onClick (RemoveTag tag), styles [ Css.width (px 29) ] ] [ text "-" ]
        , span [ styles [ marginLeft (px 5) ]] [ text tag ]
        ]

