module Pages.CoreConcepts.Collections.FixedElements.GroupingElementsTogether where

import Prelude

import Components.Code (psCodeWithLink)
import Components.ExampleBlockquote (exampleBlockquote)
import Components.ProTip (proTip)
import Contracts (Subsection, subsection)
import Deku.Attribute ((:=))
import Deku.Attributes (href, klass)
import Deku.Control (text)
import Deku.Core (fixed)
import Deku.DOM as D
import Examples as Examples

groupingElementsTogether :: Subsection
groupingElementsTogether = subsection
  { title: "Grouping components together"
  , matter: pure
      [ D.p_
          [ text
              "To group components together, you can pass an array of components to the "
          , D.code__ "fixed"
          , text
              " function. The components will render into the correct position in the parent component."
          ]
      , D.p_
          [ text
              "As an example, consider the following version of Old MacDonald. We use "
          , D.code__ "fixed"
          , text " for the lyric "
          , D.i__ "e i e i o"
          , text " so as to avoid needless code duplication. "
          ]
      , psCodeWithLink Examples.GroupingComponents
      , exampleBlockquote
          do
            let
              eieio = fixed
                [ D.span [klass "text-blue-400"] [ text "e " ]
                , D.span [klass "text-red-400"] [ text "i " ]
                , D.span [klass "text-green-400"] [ text "e " ]
                , D.span [klass "text-teal-400"] [ text "i " ]
                , D.span [klass "text-orange-400"] [ text "o" ]
                ]

            [ text "Old MacDonald had a farm, "
            , eieio
            , text ". And on that farm he had a dog, "
            , eieio
            , text
                ". With a woof-woof here and a woof-woof there. "
            , text "Here a woof, there a woof, everywhere a woof-woof. "
            , text "Old MacDonald had a farm, "
            , eieio
            , text "."
            ]
      , proTip
          { header: text "Animal sounds in different cultures"
          , message: D.div_
              [ text
                  "Dogs say woof in English, but every culture has its own animal sounds. Before using Deku, make sure to familiarize yourself with "
              , D.a
                  [href
                      "https://languagepro.com.br/woof-woof-dog-barks-in-different-languages/"
                      , D.Target := "_blank"
                  ]
                  [ text "how dogs bark in multiple languages" ]
              , text "."
              ]
          }
      , D.p_
          [ text "With "
          , D.code__ "fixed"
          , text
              ", you don't need to do any extra accounting when subbing arrays in and out of the DOM. Deku automatically manages node insertion and deletion so that fixed elements always show up in the right place."
          ]
      ]
  }
