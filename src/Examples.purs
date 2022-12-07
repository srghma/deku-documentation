module Examples (Examples(..), ExampleADT(..), examples, exampleToString, exampleToSlug) where

import Data.Newtype (class Newtype, unwrap)
foreign import filteringAnEventURL :: String
foreign import usingTheOriginalEventURL :: String
foreign import eventsAsSemiringsURL :: String
foreign import usingTheHookToSwitchBetweenElementsURL :: String
foreign import rowPolymorphismAndProvidersURL :: String
foreign import addingAttributesURL :: String
foreign import biasingASideOfSamplingURL :: String
foreign import theCreatePureEffectURL :: String
foreign import samplingABehaviorAndDiscardingTheEventURL :: String
foreign import behaviorsVersusFlappingURL :: String
foreign import injectingDependenciesURL :: String
foreign import compactingEventsURL :: String
foreign import emptyUntilFullURL :: String
foreign import addingSeveralElementsURL :: String
foreign import runSSRURL :: String
foreign import aSimpleComponentURL :: String
foreign import theLemmingEventURL :: String
foreign import componentsAsSemigroupsURL :: String
foreign import groupsOfGroupsURL :: String
foreign import theOneOfFunctionURL :: String
foreign import theGlobalPortalSyntaxURL :: String
foreign import gatingEventsOnBehaviorsURL :: String
foreign import effectsInSSRURL :: String
foreign import usingFunctionsAsMonadsURL :: String
foreign import theKeepLatestFunctionURL :: String
foreign import aSimpleCounterURL :: String
foreign import globalHandlersURL :: String
foreign import eventsAsRingsURL :: String
foreign import samplingABehaviorWithAnEventURL :: String
foreign import knowThySelfTURL :: String
foreign import shorthandListenersURL :: String
foreign import aNoteOnMemoizationURL :: String
foreign import optimizedEventCreationURL :: String
foreign import theFixFunctionURL :: String
foreign import theTemporalityOfPureURL :: String
foreign import addingAnAttributeURL :: String
foreign import addingCustomElementsURL :: String
foreign import optimizedEventFunctionsURL :: String
foreign import componentsAsMonoidsURL :: String
foreign import plainOldHtmlURL :: String
foreign import usingAnEffectURL :: String
foreign import knowThySelfURL :: String
foreign import unsafePursxURL :: String
foreign import addingASingleElementURL :: String
foreign import theLocalPortalSyntaxURL :: String
foreign import booleanLogicOnEventsURL :: String
foreign import howSamplingWorksURL :: String
foreign import unlockingLevelsURL :: String
foreign import useDynURL :: String
foreign import integratingBehaviorsURL :: String
foreign import helloWorldCodeURL :: String
foreign import insertingInADifferentOrderURL :: String
foreign import multipleSubscriptionsURL :: String
foreign import theStateHookURL :: String
foreign import interComponentCommunicationURL :: String
foreign import eventsAsMonoidsURL :: String
foreign import derivingBehaviorsURL :: String
foreign import solvingDifferentialEquationsURL :: String
foreign import usingTheHookInAnAttributeURL :: String
foreign import passingAroundHooksURL :: String
foreign import switchingOnBehaviorsURL :: String
foreign import groupingComponentsURL :: String
foreign import flippingTheFunctionAndArgumentURL :: String
foreign import movingElementsURL :: String
foreign import mockDiscordURL :: String
foreign import addingSeveralAttributesURL :: String
foreign import samplingABehaviorWithACustomFunctionURL :: String
foreign import whenToFixAndWhenToFoldURL :: String
foreign import usingAHookToControlPresenceURL :: String
foreign import removingElementsURL :: String
foreign import unsafeCustomElementURL :: String
foreign import eventsAsSemigroupsURL :: String
foreign import altAsAMuxerURL :: String
newtype Examples = Examples {
 filteringAnEvent :: String,
 usingTheOriginalEvent :: String,
 eventsAsSemirings :: String,
 usingTheHookToSwitchBetweenElements :: String,
 rowPolymorphismAndProviders :: String,
 addingAttributes :: String,
 biasingASideOfSampling :: String,
 theCreatePureEffect :: String,
 samplingABehaviorAndDiscardingTheEvent :: String,
 behaviorsVersusFlapping :: String,
 injectingDependencies :: String,
 compactingEvents :: String,
 emptyUntilFull :: String,
 addingSeveralElements :: String,
 runSSR :: String,
 aSimpleComponent :: String,
 theLemmingEvent :: String,
 componentsAsSemigroups :: String,
 groupsOfGroups :: String,
 theOneOfFunction :: String,
 theGlobalPortalSyntax :: String,
 gatingEventsOnBehaviors :: String,
 effectsInSSR :: String,
 usingFunctionsAsMonads :: String,
 theKeepLatestFunction :: String,
 aSimpleCounter :: String,
 globalHandlers :: String,
 eventsAsRings :: String,
 samplingABehaviorWithAnEvent :: String,
 knowThySelfT :: String,
 shorthandListeners :: String,
 aNoteOnMemoization :: String,
 optimizedEventCreation :: String,
 theFixFunction :: String,
 theTemporalityOfPure :: String,
 addingAnAttribute :: String,
 addingCustomElements :: String,
 optimizedEventFunctions :: String,
 componentsAsMonoids :: String,
 plainOldHtml :: String,
 usingAnEffect :: String,
 knowThySelf :: String,
 unsafePursx :: String,
 addingASingleElement :: String,
 theLocalPortalSyntax :: String,
 booleanLogicOnEvents :: String,
 howSamplingWorks :: String,
 unlockingLevels :: String,
 useDyn :: String,
 integratingBehaviors :: String,
 helloWorldCode :: String,
 insertingInADifferentOrder :: String,
 multipleSubscriptions :: String,
 theStateHook :: String,
 interComponentCommunication :: String,
 eventsAsMonoids :: String,
 derivingBehaviors :: String,
 solvingDifferentialEquations :: String,
 usingTheHookInAnAttribute :: String,
 passingAroundHooks :: String,
 switchingOnBehaviors :: String,
 groupingComponents :: String,
 flippingTheFunctionAndArgument :: String,
 movingElements :: String,
 mockDiscord :: String,
 addingSeveralAttributes :: String,
 samplingABehaviorWithACustomFunction :: String,
 whenToFixAndWhenToFold :: String,
 usingAHookToControlPresence :: String,
 removingElements :: String,
 unsafeCustomElement :: String,
 eventsAsSemigroups :: String,
 altAsAMuxer :: String
}
derive instance Newtype Examples _
examples :: Examples
examples = Examples {
 filteringAnEvent: filteringAnEventURL,
 usingTheOriginalEvent: usingTheOriginalEventURL,
 eventsAsSemirings: eventsAsSemiringsURL,
 usingTheHookToSwitchBetweenElements: usingTheHookToSwitchBetweenElementsURL,
 rowPolymorphismAndProviders: rowPolymorphismAndProvidersURL,
 addingAttributes: addingAttributesURL,
 biasingASideOfSampling: biasingASideOfSamplingURL,
 theCreatePureEffect: theCreatePureEffectURL,
 samplingABehaviorAndDiscardingTheEvent: samplingABehaviorAndDiscardingTheEventURL,
 behaviorsVersusFlapping: behaviorsVersusFlappingURL,
 injectingDependencies: injectingDependenciesURL,
 compactingEvents: compactingEventsURL,
 emptyUntilFull: emptyUntilFullURL,
 addingSeveralElements: addingSeveralElementsURL,
 runSSR: runSSRURL,
 aSimpleComponent: aSimpleComponentURL,
 theLemmingEvent: theLemmingEventURL,
 componentsAsSemigroups: componentsAsSemigroupsURL,
 groupsOfGroups: groupsOfGroupsURL,
 theOneOfFunction: theOneOfFunctionURL,
 theGlobalPortalSyntax: theGlobalPortalSyntaxURL,
 gatingEventsOnBehaviors: gatingEventsOnBehaviorsURL,
 effectsInSSR: effectsInSSRURL,
 usingFunctionsAsMonads: usingFunctionsAsMonadsURL,
 theKeepLatestFunction: theKeepLatestFunctionURL,
 aSimpleCounter: aSimpleCounterURL,
 globalHandlers: globalHandlersURL,
 eventsAsRings: eventsAsRingsURL,
 samplingABehaviorWithAnEvent: samplingABehaviorWithAnEventURL,
 knowThySelfT: knowThySelfTURL,
 shorthandListeners: shorthandListenersURL,
 aNoteOnMemoization: aNoteOnMemoizationURL,
 optimizedEventCreation: optimizedEventCreationURL,
 theFixFunction: theFixFunctionURL,
 theTemporalityOfPure: theTemporalityOfPureURL,
 addingAnAttribute: addingAnAttributeURL,
 addingCustomElements: addingCustomElementsURL,
 optimizedEventFunctions: optimizedEventFunctionsURL,
 componentsAsMonoids: componentsAsMonoidsURL,
 plainOldHtml: plainOldHtmlURL,
 usingAnEffect: usingAnEffectURL,
 knowThySelf: knowThySelfURL,
 unsafePursx: unsafePursxURL,
 addingASingleElement: addingASingleElementURL,
 theLocalPortalSyntax: theLocalPortalSyntaxURL,
 booleanLogicOnEvents: booleanLogicOnEventsURL,
 howSamplingWorks: howSamplingWorksURL,
 unlockingLevels: unlockingLevelsURL,
 useDyn: useDynURL,
 integratingBehaviors: integratingBehaviorsURL,
 helloWorldCode: helloWorldCodeURL,
 insertingInADifferentOrder: insertingInADifferentOrderURL,
 multipleSubscriptions: multipleSubscriptionsURL,
 theStateHook: theStateHookURL,
 interComponentCommunication: interComponentCommunicationURL,
 eventsAsMonoids: eventsAsMonoidsURL,
 derivingBehaviors: derivingBehaviorsURL,
 solvingDifferentialEquations: solvingDifferentialEquationsURL,
 usingTheHookInAnAttribute: usingTheHookInAnAttributeURL,
 passingAroundHooks: passingAroundHooksURL,
 switchingOnBehaviors: switchingOnBehaviorsURL,
 groupingComponents: groupingComponentsURL,
 flippingTheFunctionAndArgument: flippingTheFunctionAndArgumentURL,
 movingElements: movingElementsURL,
 mockDiscord: mockDiscordURL,
 addingSeveralAttributes: addingSeveralAttributesURL,
 samplingABehaviorWithACustomFunction: samplingABehaviorWithACustomFunctionURL,
 whenToFixAndWhenToFold: whenToFixAndWhenToFoldURL,
 usingAHookToControlPresence: usingAHookToControlPresenceURL,
 removingElements: removingElementsURL,
 unsafeCustomElement: unsafeCustomElementURL,
 eventsAsSemigroups: eventsAsSemigroupsURL,
 altAsAMuxer: altAsAMuxerURL
 }
data ExampleADT = FilteringAnEvent | UsingTheOriginalEvent | EventsAsSemirings | UsingTheHookToSwitchBetweenElements | RowPolymorphismAndProviders | AddingAttributes | BiasingASideOfSampling | TheCreatePureEffect | SamplingABehaviorAndDiscardingTheEvent | BehaviorsVersusFlapping | InjectingDependencies | CompactingEvents | EmptyUntilFull | AddingSeveralElements | RunSSR | ASimpleComponent | TheLemmingEvent | ComponentsAsSemigroups | GroupsOfGroups | TheOneOfFunction | TheGlobalPortalSyntax | GatingEventsOnBehaviors | EffectsInSSR | UsingFunctionsAsMonads | TheKeepLatestFunction | ASimpleCounter | GlobalHandlers | EventsAsRings | SamplingABehaviorWithAnEvent | KnowThySelfT | ShorthandListeners | ANoteOnMemoization | OptimizedEventCreation | TheFixFunction | TheTemporalityOfPure | AddingAnAttribute | AddingCustomElements | OptimizedEventFunctions | ComponentsAsMonoids | PlainOldHtml | UsingAnEffect | KnowThySelf | UnsafePursx | AddingASingleElement | TheLocalPortalSyntax | BooleanLogicOnEvents | HowSamplingWorks | UnlockingLevels | UseDyn | IntegratingBehaviors | HelloWorldCode | InsertingInADifferentOrder | MultipleSubscriptions | TheStateHook | InterComponentCommunication | EventsAsMonoids | DerivingBehaviors | SolvingDifferentialEquations | UsingTheHookInAnAttribute | PassingAroundHooks | SwitchingOnBehaviors | GroupingComponents | FlippingTheFunctionAndArgument | MovingElements | MockDiscord | AddingSeveralAttributes | SamplingABehaviorWithACustomFunction | WhenToFixAndWhenToFold | UsingAHookToControlPresence | RemovingElements | UnsafeCustomElement | EventsAsSemigroups | AltAsAMuxer 
exampleToString :: ExampleADT -> String
exampleToString FilteringAnEvent = (unwrap examples).filteringAnEvent
exampleToString UsingTheOriginalEvent = (unwrap examples).usingTheOriginalEvent
exampleToString EventsAsSemirings = (unwrap examples).eventsAsSemirings
exampleToString UsingTheHookToSwitchBetweenElements = (unwrap examples).usingTheHookToSwitchBetweenElements
exampleToString RowPolymorphismAndProviders = (unwrap examples).rowPolymorphismAndProviders
exampleToString AddingAttributes = (unwrap examples).addingAttributes
exampleToString BiasingASideOfSampling = (unwrap examples).biasingASideOfSampling
exampleToString TheCreatePureEffect = (unwrap examples).theCreatePureEffect
exampleToString SamplingABehaviorAndDiscardingTheEvent = (unwrap examples).samplingABehaviorAndDiscardingTheEvent
exampleToString BehaviorsVersusFlapping = (unwrap examples).behaviorsVersusFlapping
exampleToString InjectingDependencies = (unwrap examples).injectingDependencies
exampleToString CompactingEvents = (unwrap examples).compactingEvents
exampleToString EmptyUntilFull = (unwrap examples).emptyUntilFull
exampleToString AddingSeveralElements = (unwrap examples).addingSeveralElements
exampleToString RunSSR = (unwrap examples).runSSR
exampleToString ASimpleComponent = (unwrap examples).aSimpleComponent
exampleToString TheLemmingEvent = (unwrap examples).theLemmingEvent
exampleToString ComponentsAsSemigroups = (unwrap examples).componentsAsSemigroups
exampleToString GroupsOfGroups = (unwrap examples).groupsOfGroups
exampleToString TheOneOfFunction = (unwrap examples).theOneOfFunction
exampleToString TheGlobalPortalSyntax = (unwrap examples).theGlobalPortalSyntax
exampleToString GatingEventsOnBehaviors = (unwrap examples).gatingEventsOnBehaviors
exampleToString EffectsInSSR = (unwrap examples).effectsInSSR
exampleToString UsingFunctionsAsMonads = (unwrap examples).usingFunctionsAsMonads
exampleToString TheKeepLatestFunction = (unwrap examples).theKeepLatestFunction
exampleToString ASimpleCounter = (unwrap examples).aSimpleCounter
exampleToString GlobalHandlers = (unwrap examples).globalHandlers
exampleToString EventsAsRings = (unwrap examples).eventsAsRings
exampleToString SamplingABehaviorWithAnEvent = (unwrap examples).samplingABehaviorWithAnEvent
exampleToString KnowThySelfT = (unwrap examples).knowThySelfT
exampleToString ShorthandListeners = (unwrap examples).shorthandListeners
exampleToString ANoteOnMemoization = (unwrap examples).aNoteOnMemoization
exampleToString OptimizedEventCreation = (unwrap examples).optimizedEventCreation
exampleToString TheFixFunction = (unwrap examples).theFixFunction
exampleToString TheTemporalityOfPure = (unwrap examples).theTemporalityOfPure
exampleToString AddingAnAttribute = (unwrap examples).addingAnAttribute
exampleToString AddingCustomElements = (unwrap examples).addingCustomElements
exampleToString OptimizedEventFunctions = (unwrap examples).optimizedEventFunctions
exampleToString ComponentsAsMonoids = (unwrap examples).componentsAsMonoids
exampleToString PlainOldHtml = (unwrap examples).plainOldHtml
exampleToString UsingAnEffect = (unwrap examples).usingAnEffect
exampleToString KnowThySelf = (unwrap examples).knowThySelf
exampleToString UnsafePursx = (unwrap examples).unsafePursx
exampleToString AddingASingleElement = (unwrap examples).addingASingleElement
exampleToString TheLocalPortalSyntax = (unwrap examples).theLocalPortalSyntax
exampleToString BooleanLogicOnEvents = (unwrap examples).booleanLogicOnEvents
exampleToString HowSamplingWorks = (unwrap examples).howSamplingWorks
exampleToString UnlockingLevels = (unwrap examples).unlockingLevels
exampleToString UseDyn = (unwrap examples).useDyn
exampleToString IntegratingBehaviors = (unwrap examples).integratingBehaviors
exampleToString HelloWorldCode = (unwrap examples).helloWorldCode
exampleToString InsertingInADifferentOrder = (unwrap examples).insertingInADifferentOrder
exampleToString MultipleSubscriptions = (unwrap examples).multipleSubscriptions
exampleToString TheStateHook = (unwrap examples).theStateHook
exampleToString InterComponentCommunication = (unwrap examples).interComponentCommunication
exampleToString EventsAsMonoids = (unwrap examples).eventsAsMonoids
exampleToString DerivingBehaviors = (unwrap examples).derivingBehaviors
exampleToString SolvingDifferentialEquations = (unwrap examples).solvingDifferentialEquations
exampleToString UsingTheHookInAnAttribute = (unwrap examples).usingTheHookInAnAttribute
exampleToString PassingAroundHooks = (unwrap examples).passingAroundHooks
exampleToString SwitchingOnBehaviors = (unwrap examples).switchingOnBehaviors
exampleToString GroupingComponents = (unwrap examples).groupingComponents
exampleToString FlippingTheFunctionAndArgument = (unwrap examples).flippingTheFunctionAndArgument
exampleToString MovingElements = (unwrap examples).movingElements
exampleToString MockDiscord = (unwrap examples).mockDiscord
exampleToString AddingSeveralAttributes = (unwrap examples).addingSeveralAttributes
exampleToString SamplingABehaviorWithACustomFunction = (unwrap examples).samplingABehaviorWithACustomFunction
exampleToString WhenToFixAndWhenToFold = (unwrap examples).whenToFixAndWhenToFold
exampleToString UsingAHookToControlPresence = (unwrap examples).usingAHookToControlPresence
exampleToString RemovingElements = (unwrap examples).removingElements
exampleToString UnsafeCustomElement = (unwrap examples).unsafeCustomElement
exampleToString EventsAsSemigroups = (unwrap examples).eventsAsSemigroups
exampleToString AltAsAMuxer = (unwrap examples).altAsAMuxer
exampleToSlug :: ExampleADT -> String
exampleToSlug FilteringAnEvent = "filteringAnEvent"
exampleToSlug UsingTheOriginalEvent = "usingTheOriginalEvent"
exampleToSlug EventsAsSemirings = "eventsAsSemirings"
exampleToSlug UsingTheHookToSwitchBetweenElements = "usingTheHookToSwitchBetweenElements"
exampleToSlug RowPolymorphismAndProviders = "rowPolymorphismAndProviders"
exampleToSlug AddingAttributes = "addingAttributes"
exampleToSlug BiasingASideOfSampling = "biasingASideOfSampling"
exampleToSlug TheCreatePureEffect = "theCreatePureEffect"
exampleToSlug SamplingABehaviorAndDiscardingTheEvent = "samplingABehaviorAndDiscardingTheEvent"
exampleToSlug BehaviorsVersusFlapping = "behaviorsVersusFlapping"
exampleToSlug InjectingDependencies = "injectingDependencies"
exampleToSlug CompactingEvents = "compactingEvents"
exampleToSlug EmptyUntilFull = "emptyUntilFull"
exampleToSlug AddingSeveralElements = "addingSeveralElements"
exampleToSlug RunSSR = "runSSR"
exampleToSlug ASimpleComponent = "aSimpleComponent"
exampleToSlug TheLemmingEvent = "theLemmingEvent"
exampleToSlug ComponentsAsSemigroups = "componentsAsSemigroups"
exampleToSlug GroupsOfGroups = "groupsOfGroups"
exampleToSlug TheOneOfFunction = "theOneOfFunction"
exampleToSlug TheGlobalPortalSyntax = "theGlobalPortalSyntax"
exampleToSlug GatingEventsOnBehaviors = "gatingEventsOnBehaviors"
exampleToSlug EffectsInSSR = "effectsInSSR"
exampleToSlug UsingFunctionsAsMonads = "usingFunctionsAsMonads"
exampleToSlug TheKeepLatestFunction = "theKeepLatestFunction"
exampleToSlug ASimpleCounter = "aSimpleCounter"
exampleToSlug GlobalHandlers = "globalHandlers"
exampleToSlug EventsAsRings = "eventsAsRings"
exampleToSlug SamplingABehaviorWithAnEvent = "samplingABehaviorWithAnEvent"
exampleToSlug KnowThySelfT = "knowThySelfT"
exampleToSlug ShorthandListeners = "shorthandListeners"
exampleToSlug ANoteOnMemoization = "aNoteOnMemoization"
exampleToSlug OptimizedEventCreation = "optimizedEventCreation"
exampleToSlug TheFixFunction = "theFixFunction"
exampleToSlug TheTemporalityOfPure = "theTemporalityOfPure"
exampleToSlug AddingAnAttribute = "addingAnAttribute"
exampleToSlug AddingCustomElements = "addingCustomElements"
exampleToSlug OptimizedEventFunctions = "optimizedEventFunctions"
exampleToSlug ComponentsAsMonoids = "componentsAsMonoids"
exampleToSlug PlainOldHtml = "plainOldHtml"
exampleToSlug UsingAnEffect = "usingAnEffect"
exampleToSlug KnowThySelf = "knowThySelf"
exampleToSlug UnsafePursx = "unsafePursx"
exampleToSlug AddingASingleElement = "addingASingleElement"
exampleToSlug TheLocalPortalSyntax = "theLocalPortalSyntax"
exampleToSlug BooleanLogicOnEvents = "booleanLogicOnEvents"
exampleToSlug HowSamplingWorks = "howSamplingWorks"
exampleToSlug UnlockingLevels = "unlockingLevels"
exampleToSlug UseDyn = "useDyn"
exampleToSlug IntegratingBehaviors = "integratingBehaviors"
exampleToSlug HelloWorldCode = "helloWorldCode"
exampleToSlug InsertingInADifferentOrder = "insertingInADifferentOrder"
exampleToSlug MultipleSubscriptions = "multipleSubscriptions"
exampleToSlug TheStateHook = "theStateHook"
exampleToSlug InterComponentCommunication = "interComponentCommunication"
exampleToSlug EventsAsMonoids = "eventsAsMonoids"
exampleToSlug DerivingBehaviors = "derivingBehaviors"
exampleToSlug SolvingDifferentialEquations = "solvingDifferentialEquations"
exampleToSlug UsingTheHookInAnAttribute = "usingTheHookInAnAttribute"
exampleToSlug PassingAroundHooks = "passingAroundHooks"
exampleToSlug SwitchingOnBehaviors = "switchingOnBehaviors"
exampleToSlug GroupingComponents = "groupingComponents"
exampleToSlug FlippingTheFunctionAndArgument = "flippingTheFunctionAndArgument"
exampleToSlug MovingElements = "movingElements"
exampleToSlug MockDiscord = "mockDiscord"
exampleToSlug AddingSeveralAttributes = "addingSeveralAttributes"
exampleToSlug SamplingABehaviorWithACustomFunction = "samplingABehaviorWithACustomFunction"
exampleToSlug WhenToFixAndWhenToFold = "whenToFixAndWhenToFold"
exampleToSlug UsingAHookToControlPresence = "usingAHookToControlPresence"
exampleToSlug RemovingElements = "removingElements"
exampleToSlug UnsafeCustomElement = "unsafeCustomElement"
exampleToSlug EventsAsSemigroups = "eventsAsSemigroups"
exampleToSlug AltAsAMuxer = "altAsAMuxer"
