module NextUI.NextUI
  ( Theme
  , UseNextTheme
  , UseTheme
  , avatar
  , button
  , buttonGroup
  , card
  , cardBody
  , cardDivider
  , cardFooter
  , cardHeader
  , col
  , container
  , createTheme
  , dropdown
  , dropdownButton
  , dropdownItem
  , dropdownMenu
  , dropdownTrigger
  , grid
  , gridContainer
  , input
  , link
  , loading
  , navbar
  , navbarBrand
  , navbarCollapse
  , navbarCollapseItem
  , navbarContent
  , navbarItem
  , navbarLink
  , navbarToggle
  , nextThemesProvider
  , nextUIProvider
  , pagination
  , popover
  , popoverContent
  , popoverTrigger
  , row
  , spacer
  , switch
  , text
  , textArea
  , themeClassName
  , themeIsDark
  , useNextTheme
  , useTheme
  ) where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import React.Basic.Hooks (Hook, JSX, ReactComponent, unsafeHook)

foreign import data Theme :: Type

foreign import nextUIProvider :: forall props. ReactComponent { children :: Array JSX | props }

foreign import button :: forall props. ReactComponent { | props }

foreign import buttonGroup :: forall props. ReactComponent { | props }

foreign import switch :: forall props. ReactComponent { | props }

foreign import container :: forall props. ReactComponent { | props }

foreign import row :: forall props. ReactComponent { | props }

foreign import col :: forall props. ReactComponent { | props }

foreign import grid :: forall props. ReactComponent { | props }

foreign import gridContainer :: forall props. ReactComponent { | props }

foreign import spacer :: forall props. ReactComponent { | props }

foreign import input :: forall props. ReactComponent { | props }

foreign import textArea :: forall props. ReactComponent { | props }

foreign import text :: forall props. ReactComponent { | props }

foreign import link :: forall props. ReactComponent { | props }

foreign import loading :: forall props. ReactComponent { | props }

foreign import card :: forall props. ReactComponent { | props }

foreign import cardHeader :: forall props. ReactComponent { | props }
foreign import cardBody :: forall props. ReactComponent { | props }
foreign import cardFooter :: forall props. ReactComponent { | props }
foreign import cardDivider :: forall props. ReactComponent { | props }

foreign import pagination :: forall props. ReactComponent { | props }

foreign import navbar :: forall props. ReactComponent { | props }
foreign import navbarBrand :: forall props. ReactComponent { | props }
foreign import navbarLink :: forall props. ReactComponent { | props }
foreign import navbarContent :: forall props. ReactComponent { | props }
foreign import navbarItem :: forall props. ReactComponent { | props }
foreign import navbarToggle :: forall props. ReactComponent { | props }
foreign import navbarCollapse :: forall props. ReactComponent { | props }
foreign import navbarCollapseItem :: forall props. ReactComponent { | props }

foreign import dropdown :: forall props. ReactComponent { | props }
foreign import dropdownButton :: forall props. ReactComponent { | props }
foreign import dropdownMenu :: forall props. ReactComponent { | props }
foreign import dropdownItem :: forall props. ReactComponent { | props }
foreign import dropdownTrigger :: forall props. ReactComponent { | props }

foreign import avatar :: forall props. ReactComponent { | props }

foreign import popover :: forall props. ReactComponent { | props }
foreign import popoverContent :: forall props. ReactComponent { | props }
foreign import popoverTrigger :: forall props. ReactComponent { | props }

foreign import createTheme :: forall props. { | props } -> Effect Theme

foreign import nextThemesProvider :: forall props. ReactComponent { children :: Array JSX | props }

foreign import themeClassName :: Theme -> String

foreign import themeIsDark :: Theme -> Boolean

foreign import useTheme_ :: Effect { theme :: Theme, isDark :: Boolean }

useTheme :: Hook (UseTheme) { theme :: Theme, isDark :: Boolean }
useTheme = unsafeHook useTheme_

foreign import data UseTheme :: Type -> Type

foreign import useNextTheme_ :: Effect { theme :: Theme, isDark :: Boolean, setTheme :: EffectFn1 String Unit }

useNextTheme :: Hook (UseNextTheme) { theme :: Theme, isDark :: Boolean, setTheme :: String -> Effect Unit }
useNextTheme = unsafeHook useNextTheme_ <#> \{ theme, isDark, setTheme } -> { theme, isDark, setTheme: runEffectFn1 setTheme }

foreign import data UseNextTheme :: Type -> Type
