module Pages.FRP.Alternatives.Plus where

import Prelude

import Contracts (Section, section)
import Deku.Control (text)
import Deku.DOM as D
import Pages.FRP.Alternatives.Plus.LawfullyAlternative (lawfullyAlternative)
import Pages.FRP.Alternatives.Plus.Emptiness (emptiness)

plus :: Section
plus = section
  { title: "Plus"
  , topmatter: pure
      [ D.p_
          [ text "The "
          , D.code__ "Plus"
          , text
              " typeclass allows us to define an empty element for a collection. We've already sort-of seen this, as we need an empty element for "
          , D.code__ "oneOf"
          , text
              " to work on an empty array. Let's build some intuition about what the empty "
          , D.code__ "Event"
          , text " is and how it is lawful."
          ]
      ]
  , subsections:
      [ emptiness, lawfullyAlternative ]
  }
