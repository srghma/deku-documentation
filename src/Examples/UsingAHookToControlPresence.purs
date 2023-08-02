module Examples.UsingAHookToControlPresence where

import Prelude

import Data.Tuple.Nested ((/\))
import Deku.Control (text)
import Deku.DOM as D
import Deku.Do as Deku
import Deku.Hooks (useState, guard)
import Deku.Attributes (klass)
import Deku.Listeners (click)
import Deku.Toplevel (runInBody)
import Effect (Effect)

main :: Effect Unit
main = runInBody Deku.do
  setPresence /\ presence <- useState true
  D.div_
    [ guard presence (text "Now you see me, ")
    , D.a
        [ klass "cursor-pointer"
        , click $ presence <#> not >>> setPresence
        ]
        [ text $ presence <#>
            if _ then "now you don't." else "Oops, come back!"
        ]
    ]