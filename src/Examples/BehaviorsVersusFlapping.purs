module Examples.BehaviorsVersusFlapping where

import Deku.Toplevel (runInBody')
import Effect (Effect)
import Prelude
import ExampleAssitant (ExampleSignature)

import Data.Tuple (Tuple(..))
import Deku.Control (text)

import Effect.Random (random)
import FRP.Behavior (behavior, sample)
import FRP.Event.Time (interval)

app :: ExampleSignature
app runExample = do
  i <- interval 250
  runExample do
    text
      ( show <$> sample
          (behavior (pure (Tuple (pure unit) random)))
          (i.event $> add 42.0)
      )

main :: Effect Unit
main = void $ app (map (map void) runInBody')