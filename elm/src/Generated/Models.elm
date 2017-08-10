module Generated.Models exposing (..)

type alias Tags =
    { tags : List (String)
    }

type alias SearchResults =
    { searchRequest : SearchRequest
    , results : List (SearchResult)
    }

type alias SearchRequest =
    { tag : String
    }

type alias SearchResult =
    { title : String
    , imgSrc : String
    , href : String
    , description : String
    }

type alias Saved =
    { saved : String
    }