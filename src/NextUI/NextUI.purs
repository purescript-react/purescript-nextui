module NextUI.NextUI
  ( Theme
  , UseTheme
  , button
  , card
  , cardBody
  , col
  , container
  , createTheme
  , grid
  , gridContainer
  , input
  , link
  , loading
  , navbar
  , navbarBrand
  , navbarContent
  , navbarItem
  , navbarLink
  , nextThemesProvider
  , nextUIProvider
  , pagination
  , row
  , sendButton
  , spacer
  , switch
  , text
  , textArea
  , themeClassName
  , themeIsDark
  , useTheme
  ) where

import Prelude

import Effect (Effect)
import Prim.Row (class Lacks)
import React.Basic.Hooks (Hook, JSX, ReactComponent, unsafeHook)

foreign import data Theme :: Type

foreign import nextUIProvider :: forall props. ReactComponent { children :: Array JSX | props }

foreign import button :: forall props. ReactComponent { | props }

foreign import switch :: forall props. ReactComponent { | props }

foreign import container :: forall props. ReactComponent { | props }

foreign import row :: forall props. ReactComponent { | props }

foreign import col :: forall props. ReactComponent { | props }

foreign import grid :: forall props. ReactComponent { | props }

foreign import gridContainer :: forall props. ReactComponent { | props }

foreign import spacer :: forall props. ReactComponent { | props }

foreign import input :: forall props. ReactComponent { | props }

foreign import sendButton :: forall props. ReactComponent { | props }

foreign import textArea :: forall props. ReactComponent { | props }

foreign import text :: forall props. ReactComponent { | props }

foreign import link :: forall props. ReactComponent { | props }

foreign import loading :: forall props. ReactComponent { | props }

foreign import card :: forall props. ReactComponent { | props }

foreign import cardBody :: forall props. ReactComponent { | props }

foreign import pagination :: forall props. ReactComponent { | props }

foreign import navbar :: forall props. ReactComponent { | props }
foreign import navbarBrand :: forall props. ReactComponent { | props }
foreign import navbarLink :: forall props. ReactComponent { | props }
foreign import navbarContent :: forall props. ReactComponent { | props }
foreign import navbarItem :: forall props. ReactComponent { | props }

foreign import createTheme :: forall props. { | props } -> Effect Theme

foreign import nextThemesProvider :: forall props. ReactComponent { children :: Array JSX | props }

foreign import themeClassName :: Theme -> String

foreign import themeIsDark :: Theme -> Boolean

foreign import useTheme_ :: Effect Theme

useTheme :: Hook (UseTheme) Theme
useTheme = unsafeHook useTheme_

foreign import data UseTheme :: Type -> Type
