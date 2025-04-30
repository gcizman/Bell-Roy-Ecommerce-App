module YouTubeEmbed exposing (main)

import Html exposing (Html, iframe)
import Html.Attributes exposing (src, width, height, attribute)

{-| A simple Elm view that embeds a YouTube video using an iframe.
    We convert the provided YouTube watch URL to an embed URL.
-}
main : Html msg
main =
    let
        videoId = "dNP0QvFpu4s"
        -- Optionally retain any extra parameters. For example, to start at 5 seconds and include a playlist:
        embedUrl =
            "https://www.youtube.com/embed/" ++ videoId ++ "?list=TLGG1guvyCglndgzMDA0MjAyNQ&start=21"
    in
    iframe
        [ src embedUrl
        , width 760
        , height 415
        , attribute "frameborder" "1"
        , attribute "allow" "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        , attribute "allowfullscreen" "true"
        ]
        []