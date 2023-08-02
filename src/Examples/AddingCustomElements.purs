module Examples.AddingCustomElements where

import Prelude

import Data.These (These(..))
import Deku.Attribute (class Attr, AttributeValue(..), unsafeAttribute, (:=))
import Deku.Control (text)
import Deku.DOM (unsafeCustomElement)
import Deku.DOM as D
import Deku.Toplevel (runInBody)
import Effect (Effect)
import Type.Proxy (Proxy(..))

data MyNiftyAnchor_

data MyPages = JoyrideFM | MikeSolomonOrg
data MyTarget = Blank

instance Attr MyNiftyAnchor_ D.Href MyPages where
  attr _ JoyrideFM = unsafeAttribute $ This
    { key: "href", value: Prop' "https://joyride.fm" }
  attr _ MikeSolomonOrg = unsafeAttribute $ This
    { key: "href", value: Prop' "https://mikesolomon.org" }

instance Attr MyNiftyAnchor_ D.Target MyTarget where
  attr _ _ = unsafeAttribute $ This
    { key: "target", value: Prop' "_blank" }

main ∷ Effect Unit
main = runInBody do
  unsafeCustomElement "a" (Proxy :: _ MyNiftyAnchor_)
    [ D.Href := JoyrideFM
    , D.Target := Blank
    ]
    [ text "hi" ]