module Pages.CoreConcepts.Portals.LocalPortals.TheLocalPortalResult where

import Prelude

import Contracts (Subsection, subsection)
import Deku.Control (text)
import Deku.Attribute ((:=))
import Deku.DOM as D

theLocalPortalResult :: Subsection
theLocalPortalResult = subsection
  { title: "The local portal result"
  , matter: pure
      [ D.p_
          [ text "This subsection will be about "
          , D.span [ D.Class := "font-bold" ]
              [ text "The local portal result" ]
          , text "."
          ]
      ]
  }
