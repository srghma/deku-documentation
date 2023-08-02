module Pages.FRP.Applicatives.Applicative.ApplicativeAsBiSampling where

import Prelude

import Components.Code (psCode)
import Contracts (Subsection, subsection)
import Deku.Control (text)
import Deku.DOM as D

applicativeAsBiSampling :: Subsection
applicativeAsBiSampling = subsection
  { title: "Applicative as bi-sampling"
  , matter: pure
      [ D.p_
          [ text
              "All applicative functors accumualte the effects of two separate terms into a final term. In the case of "
          , D.code__ "Event"
          , text " the "
          , D.code__ "apply"
          , text " function, aka "
          , D.code__ "<*>"
          , text
              ", must fulfill this requirement. As a reminder, the signature of this function is:"
          ]
      , psCode "forall a b. Event (a -> b) -> Event a -> Event b"
      , D.p_
          [ text "The final event requires "
          , D.i__ "both"
          , text " the left and right sides to produce a value, so "
          , D.code__ "Event b"
          , text
              " will not emit before it has received at least one value from the left and right events."
          ]
      , D.p_
          [ text
              "To be a lawful applicative functor, "
          , D.code__ "Event"
          , text
              " needs to accumualte the effects from both sides. That means that when one side emits a value, an event must be emitted provided there has been at least one value from the other side. This can be thought of as "
          , D.b__ "bi-sampling"
          , text
              ", meaning that when a value is emitted from the left event, it samples the most recent value from the right event and vice versa."
          ]
      , D.p_
          [ text
              "An important corner case arises when both events emit a value at the same time. In this case, the first event emitted will use the "
          , D.i__ "new"
          , text " left side with the "
          , D.i__ "old"
          , text " right side followed by the new left "
          , D.i__ "and"
          , text
              " right side. This is because, in the browser, there is no true co-temporality. One event is always admitted before the other, and if the events happen during the same tick, the left event is always interpreted before the right one."
          ]
      ]
  }
