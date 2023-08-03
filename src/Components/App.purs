module Components.App where

import Prelude

import Components.Banner (banner)
import Components.BottomNav (bottomNav)
import Components.Header (header)
import Components.LeftMatter (leftMatter)
import Components.Link (link, linkWithString)
import Contracts (Content, Env(..), Page(..), Section(..), Subsection(..), EffectWithCancellers, contentToBehavior, getEnv)
import Control.Alt ((<|>))
import Control.Monad.Free (foldFree)
import Control.Monad.State (evalState, evalStateT, get, lift, put, runState)
import Control.Monad.Writer (runWriterT)
import Control.Plus (empty)
import DarkModePreference (DarkModePreference(..))
import Data.Maybe (Maybe(..))
import Data.Newtype (unwrap)
import Data.NonEmpty (head, tail, (:|))
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..), fst, snd)
import Data.Tuple.Nested (type (/\), (/\))
import Deku.Attribute ((:=))
import Deku.Attributes (klass)
import Deku.Control (text)
import Deku.Core (Nut)
import Deku.DOM as D
import Deku.Do as Deku
import Deku.Hooks (cycle, useState, (<#~>))
import Deku.Listeners (click)
import Effect (Effect)
import Effect.Ref as Ref
import FRP.Event (Event, fix, bindToEffect, merge, sampleOnRight)
import FRP.Event.Class (once)
import Navigation (PushState)
import Prism (forceHighlightAff)
import Router.ADT (Route(..))
import Router.Chapter (routeToChapter)
import Router.RouteOrder (routeToNextRoute, routeToPrevRoute)
import Web.DOM as DOM

pageToContent :: Page -> Content Nut
pageToContent (Page cp) = do
  Env { setRightSideNav } <- getEnv
  tp <- cp.topmatter
  sections <- flip evalStateT 0
    ( traverse
        ( \(Section section) -> do
            i <- get
            put (i + 1)
            stm <- lift section.topmatter
            inner <- traverse
              ( \(Subsection subsection) ->
                  do
                    j <- get
                    put (j + 1)
                    smat <- lift subsection.matter
                    pure
                      ( [ D.h3
                            ( [ D.Id := subsection.id
                              , D.Self := Tuple j >>> setRightSideNav
                              ]
                            )
                            [ text subsection.title
                            ]
                        ] <> smat
                      )
              )
              section.subsections
            pure
              ( [ D.hr_ []
                , D.h2
                    ( [ D.Id := section.id
                      , D.Self :=
                          Tuple i >>>
                          setRightSideNav
                      ]
                    )
                    [ text section.title ]

                ] <> stm <> join inner
              )
        )
        cp.sections
    )
  pure $ D.article_
    [ D.header
        ( [ D.Class := "mb-9 space-y-1"
          ]
        )
        ( ( if cp.route == FourOhFour then []
            else
              [ D.p
                  ( [ D.Class :=
                        "font-display text-sm font-medium text-sky-500"
                    ]
                  )
                  [ text
                      (unwrap (routeToChapter cp.route)).title
                  ]
              ]
          ) <>
            [ D.h1
                ( [ D.Id := "getting-started"
                  , D.Class :=
                      "font-display text-3xl tracking-tight text-slate-900 dark:text-white"
                  ]
                )
                [ text cp.title ]
            ]
        )
    , D.div
        ( [ D.Class :=
              "prose prose-slate max-w-none dark:prose-invert dark:text-slate-400 prose-headings:scroll-mt-28 prose-headings:font-display prose-headings:font-normal lg:prose-headings:scroll-mt-[8.5rem] prose-lead:text-slate-500 dark:prose-lead:text-slate-400 prose-a:font-semibold dark:prose-a:text-sky-400 prose-a:no-underline prose-a:shadow-[inset_0_-2px_0_0_var(--tw-prose-background,#fff),inset_0_calc(-1*(var(--tw-prose-underline-size,4px)+2px))_0_0_var(--tw-prose-underline,theme(colors.sky.300))] hover:prose-a:[--tw-prose-underline-size:6px] dark:[--tw-prose-background:theme(colors.slate.900)] dark:prose-a:shadow-[inset_0_calc(-1*var(--tw-prose-underline-size,2px))_0_0_var(--tw-prose-underline,theme(colors.sky.800))] dark:hover:prose-a:[--tw-prose-underline-size:6px] prose-pre:rounded-xl prose-pre:bg-slate-900 prose-pre:shadow-lg dark:prose-pre:bg-slate-800/60 dark:prose-pre:shadow-none dark:prose-pre:ring-1 dark:prose-pre:ring-slate-300/10 dark:prose-hr:border-slate-800"
          ]
        )
        (tp <> join sections)
    , forceHighlightAff
    ]

pageToBehaviorWithCancellers :: Env -> Page -> EffectWithCancellers Nut
pageToBehaviorWithCancellers env = runWriterT
  <<< foldFree (contentToBehavior env)
  <<< pageToContent

pageEventToNut :: Env -> Event Page -> Event Nut
pageEventToNut env p = map snd $ fix \i -> bindToEffect
  ( sampleOnRight ((once p $> (Tuple (pure unit) mempty)) <|> i)
      (go <$> (pageToBehaviorWithCancellers env <$> p))
  )
  triggerFx
  where
  go
    :: EffectWithCancellers Nut
    -> Tuple (Effect Unit) Nut
    -> Effect (Tuple (Effect Unit) (Tuple (Effect Unit) Nut))
  go n (Tuple x _) = do
    Tuple nut cncl <- n
    pure $ Tuple x (Tuple cncl nut)

  triggerFx
    :: Effect (Tuple (Effect Unit) (Tuple (Effect Unit) Nut))
    -> Effect (Tuple (Effect Unit) Nut)
  triggerFx i = do
    Tuple x (Tuple cncl nut) <- i
    x
    pure (Tuple cncl nut)

app
  :: { setHeaderElement :: DOM.Element -> Effect Unit
     , setRightSideNav :: (Int /\ DOM.Element) -> Effect Unit
     , rightSideNavSelect :: Int -> Event Unit
     , rightSideNavDeselect :: Int -> Event Unit
     , darkModePreference :: Event Boolean
     , curPage :: Event (Page)
     , showBanner :: Event Boolean
     , pageIs :: Route -> Event Unit
     , pageWas :: Route -> Event Unit
     , pushState :: PushState
     , clickedSection :: Ref.Ref (Maybe Int)
     }
  -> Nut
app
  { setHeaderElement
  , curPage
  , setRightSideNav
  , rightSideNavSelect
  , rightSideNavDeselect
  , darkModePreference
  , showBanner
  , pageIs
  , pageWas
  , pushState
  , clickedSection
  } = Deku.do
  let
    env = Env
      { routeLink: \r -> link pushState r empty
      , routeLinkWithText: \r s -> linkWithString pushState r s empty
      , setRightSideNav
      }
  setDark /\ dark <- useState LightMode
  let
    darkBoolean =
      ( Tuple <$> darkModePreference <*>
          ((once darkModePreference $> (head dark)) <|> tail dark)
      ) <#> \(dmPref /\ dk) ->
        case dk of
          DarkMode -> true
          LightMode -> false
          SystemDarkModePreference -> dmPref

  let
    rightSideNavClass' darktxt i =
      ( false :| merge
          [ rightSideNavSelect i $> true
          , rightSideNavDeselect i $> false
          ]
      )
        <#>
          if _ then "text-sky-500"
          else "hover:text-slate-600 " <> darktxt <>
            " dark:hover:text-slate-300"

    rightSideNavClass = rightSideNavClass' "dark:text-white"
    rightSideSubNavClass = rightSideNavClass' "dark:text-slate-400"
  D.div
    ( [ klass $ darkBoolean <#> if _ then "dark" else ""
      ]
    )
    [ D.div ([ klass "bg-white dark:bg-slate-900" ])
        [ header
            { pushState
            , darkBoolean
            , dark
            , setDark
            , setHeaderElement
            , pageIs
            , pageWas
            }
        , banner { showBanner }
        , D.div
            ( [ D.Class :=
                  "relative mx-auto flex max-w-8xl justify-center sm:px-2 lg:px-8 xl:px-12"
              ]
            )
            [ leftMatter { pushState, pageIs, pageWas }
            , D.div
                [ D.Class :=
                    "min-w-0 max-w-2xl flex-auto px-4 py-16 lg:max-w-none lg:pr-0 lg:pl-8 xl:px-16"
                ]
                [ cycle (pageEventToNut env curPage)
                , curPage <#~> \(Page cp) -> bottomNav
                    { pushState
                    , prevRoute: routeToPrevRoute cp.route
                    , nextRoute: routeToNextRoute cp.route
                    }
                ]
            , D.div
                [ D.Class :=
                    "hidden xl:sticky xl:top-[4.5rem] xl:-mr-6 xl:block xl:h-[calc(100vh-4.5rem)] xl:flex-none xl:overflow-y-auto xl:py-16 xl:pr-6"
                ]
                [ curPage <#~> \(Page cp) ->
                    if cp.route == FourOhFour then mempty
                    else D.nav
                      ( [ D.Class := "w-56" ]
                      )
                      [ D.h2
                          ( [ D.Id := "on-this-page-title"
                            , D.Class :=
                                "font-display text-sm font-medium text-slate-900 dark:text-white"
                            ]
                          )
                          [ text "On this page" ]
                      , D.ol
                          ( [ D.Role := "list"
                            , D.Class := "mt-4 space-y-3 text-sm"
                            ]
                          )
                          ( flip evalState 0
                              $ traverse
                                  ( \(Section section) -> do
                                      i <- get
                                      let
                                        inner = flip runState (i + 1)
                                          ( traverse
                                              ( \(Subsection subsection) -> do
                                                  j <- get
                                                  put (j + 1)
                                                  pure $ D.li_
                                                    [ D.a
                                                        ( [ klass
                                                              ( rightSideSubNavClass
                                                                  j
                                                              )
                                                          , D.Href :=
                                                              ( "#" <>
                                                                  subsection.id
                                                              )
                                                          , click
                                                              ( Ref.write
                                                                  (Just j)
                                                                  clickedSection
                                                              )
                                                          ]
                                                        )
                                                        [ text
                                                            subsection.title
                                                        ]
                                                    ]
                                              )
                                              section.subsections
                                          )
                                      put (snd inner)
                                      pure $ D.li_
                                        ( [ D.h3_
                                              [ D.a
                                                  ( ( [ klass
                                                          ( rightSideNavClass
                                                              i
                                                          )
                                                      , D.Href :=
                                                          ("#" <> section.id)
                                                      , click
                                                          ( Ref.write (Just i)
                                                              clickedSection
                                                          )
                                                      ]
                                                    )
                                                  )
                                                  [ text section.title ]
                                              ]
                                          , D.ol
                                              ( [ D.Role := "list"
                                                , D.Class :=
                                                    "mt-2 space-y-3 pl-5 text-slate-500 dark:text-slate-400"
                                                ]
                                              )
                                              (fst inner)
                                          ]
                                        )
                                  )
                                  cp.sections
                          )
                      ]
                ]
            ]
        ]
    ]