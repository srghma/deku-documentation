module Examples.MemoizedApplication where

import Prelude

import Data.Array (intercalate, replicate)
import Data.Tuple (fst, snd)
import Deku.DOM.Attributes as DA
import Deku.Control (text, text_)
import Deku.DOM as D
import Deku.Do as Deku
import Deku.Hooks (useRant, useState)
import Deku.DOM.Listeners as DL
import Deku.SPA (runInBody)
import Effect (Effect)
import ExampleAssitant (ExampleSignature)

app :: ExampleSignature
app runExample = runExample Deku.do
  aa <- useState true
  bb <- useState false
  cc <- useState true
  dd <- useState false
  ee <- useState true
  composedEvent <- useRant
    ( { a: _, b: _, c: _, d: _, e: _ }
        <$> snd aa
        <*> snd bb
        <*> snd cc
        <*> snd dd
        <*> snd ee
    )
  D.div_
    [ D.div_
        ( map
            ( \i -> D.a
                [ DL.runOn DL.click $ snd i <#> not >>> fst i
                , DA.klass_ "cursor-pointer"
                ]
                [ text_ "Click me " ]
            )
            [ aa, bb, cc, dd, ee ]
        )
    , D.div_
        ( replicate 10
            ( D.div_
                [ text $
                    ( composedEvent
                        <#> \{ a, b, c, d, e } ->
                          intercalate " " $ map show
                            [ a, b, c, d, e ]
                    )
                ]
            )
        )
    ]

main :: Effect Unit
main = void $ app runInBody