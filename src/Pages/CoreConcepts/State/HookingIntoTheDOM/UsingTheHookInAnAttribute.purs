module Pages.CoreConcepts.State.HookingIntoTheDOM.HookInAnAttribute where

import Prelude

import Components.Code (psCodeWithLink)
import Components.ExampleBlockquote (exampleBlockquote)
import Contracts (Subsection, subsection)
import Data.String (Pattern(..), Replacement(..), replaceAll)
import Data.Tuple.Nested ((/\))
import Deku.DOM.Attributes as DA
import Deku.Control (text_)
import Deku.DOM as D
import Deku.Do as Deku
import Deku.Hooks (useState)
import Deku.DOM.Listeners as DL
import Examples as Examples

-- bg-pink-600
-- hover:bg-pink-700 
-- focus:ring-pink-500
-- bg-magenta-600
-- hover:bg-magenta-700 
-- focus:ring-magenta-500

buttonClass :: String -> String
buttonClass color =
  replaceAll (Pattern "COLOR") (Replacement color)
    """ml-4 inline-flex items-center rounded-md
border border-transparent bg-COLOR-600 px-3 py-2
text-sm font-medium leading-4 text-white shadow-sm
hover:bg-COLOR-700 focus:outline-hidden focus:ring-2
focus:ring-COLOR-500 focus:ring-offset-2"""

usingTheHookInAnAttribute :: Subsection
usingTheHookInAnAttribute = subsection
  { title: "Using a hook to control an attribute"
  , matter: pure
      [ D.p__
          "Hooks can be used to control both attributes and listeners. In the following example, two different hooks are used to control two different attributes of the same anchor tag."
      , psCodeWithLink Examples.HookInAnAttribute
      , exampleBlockquote
          [ Deku.do
              setHrefSwitch /\ hrefSwitch <- useState false
              setStyleSwitch /\ styleSwitch <- useState false
              D.div_
                [ D.a
                    [ DA.target_ "_blank"
                    , DA.href $ hrefSwitch <#>
                        if _ then "https://cia.gov" else "https://fbi.gov"
                    , DA.style $ styleSwitch <#>
                        if _ then "color:magenta;" else "color:teal;"
                    ]
                    [ text_ "Click me" ]
                , D.button
                    [ DA.klass_ $ buttonClass "indigo"
                    , DL.runOn DL.click $ hrefSwitch <#> not >>> setHrefSwitch
                    ]
                    [ text_ "Switch href" ]
                , D.button
                    [ DA.klass_ $ buttonClass "pink"
                    , DL.runOn DL.click $ styleSwitch <#> not >>> setStyleSwitch
                    ]
                    [ text_ "Switch style" ]
                ]
          ]
      , D.p_
          [ text_
              "In addition to controlling attributes of the anchor, these hooks "
          , D.i__ "also"
          , text_
              " control the click listeners. That is, each hook's value is stored in a listener, and whenever the hook updates, its new value is used to create a new listener that replaces the old one."
          ]
      ]
  }
