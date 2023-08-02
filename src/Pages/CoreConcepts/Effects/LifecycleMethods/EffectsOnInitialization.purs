module Pages.CoreConcepts.Effects.LifecycleMethods.EffectsOnInitialization where

import Prelude

import Components.Table (tableClass)
import Contracts (Subsection, subsection)
import Deku.Control (text)
import Deku.DOM as D

effectsOnInitialization :: Subsection
effectsOnInitialization = subsection
  { title: "Effects on initialization"
  , matter: pure
      [ D.p_
          [ text
              "The following two effects exist on component initialization. These are mostly useful for logging, debugging, and analytics, for example counting how many times a component is displayed on the screen."
          ]
      , D.table [ tableClass ]
          [ D.tr_
              [ D.th [ tableClass ] [ text "Name" ]
              , D.th [ tableClass ] [ text "Purpose" ]
              , D.th [ tableClass ] [ text "Signature" ]
              ]
          , D.tr_
              [ D.td [ tableClass ] [ D.code__ "onWillMount" ]
              , D.td [ tableClass ]
                  [ text
                      "The effect will run before the component mounts on the screen."
                  ]
              , D.td [ tableClass ]
                  [ D.code__
                      """ Effect Unit -> Nut -> Nut"""
                  ]
              ]
          , D.tr_
              [ D.td [ tableClass ] [ D.code__ "onDidMount" ]
              , D.td [ tableClass ]
                  [ text
                      "The effect will run directly after the component mounts on the screen."
                  ]
              , D.td [ tableClass ]
                  [ D.code__
                      """ Effect Unit -> Nut -> Nut"""
                  ]
              ]
          ]
      ]
  }
