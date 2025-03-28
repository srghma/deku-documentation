module Examples.CustomHook1 where

import Prelude

import Deku.Control (text_)
import Deku.Core (Hook)
import Deku.DOM as D
import Deku.Do as Deku
import Deku.SPA (runInBody)
import Effect (Effect)
import ExampleAssitant (ExampleSignature)

app :: ExampleSignature
app runExample = runExample Deku.do
  let
    myFortyTwoHook :: Hook String
    myFortyTwoHook makeHook = makeHook "forty-two"
  fortyTwo <- myFortyTwoHook
  D.div_
    [ text_ fortyTwo ]

main :: Effect Unit
main = void $ app runInBody