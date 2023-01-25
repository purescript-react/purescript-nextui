# purescript-nextui

Bindings for [NextUI](https://nextui.org/).

## Installation

```bash
spago install nextui
```

## Usage

Create a dark and light theme, see https://nextui.org/docs/theme/default-theme: 
```purescript
-- Theme.purs
mkDark :: Effect Theme
mkDark = createTheme
  { "type": "dark"
  , theme:
      { colors:
          { primary: "$blue600"
          ...
          }
      , space: {}
      , fonts:
          { ...
          }
      }
  }

mkLight :: Effect Theme
mkLight = createTheme
  { "type": "light"
  , theme:
      { colors:
          { primary: "$blue300"
          ...
          }
      , space: {}
      , fonts:
          { ...
          }
      }
  }
```

In your root layout component, set up the next theme provider:

```purescript
-- RootComponent.purs
myRootComponent :: React.Component { children :: Array React.JSX }
myRootComponent = do
  dark <- Themes.mkDark
  light <- Themes.mkLight
  React.component "RootComponent" \{ children } -> React.do
    pure
      $ el nextThemesProvider
          { defaultTheme: "system"
          , attribute: "class"
          , storageKey: "theme"
          , value: { dark: (unsafeCoerce dark).className, light: (unsafeCoerce light).className }
          }
      $ el nextUIProvider {} children
```

Then use NextUI. Here is an example usage:
```purescript
import NextUI.NextUI as NextUI
import React.Basic.DOM (css)
import React.Basic.DOM.Simplified.Generated as R
import React.Basic.DOM.Simplified.ToJSX (el)


myComponent :: React.Component Props
myComponent = do
    React.component "MyComponent" \props ->
    React.do
      { theme, isDark } <- NextUI.useTheme
      pure $ el NextUI.container { gap: 0, lg: true }
        $ el NextUI.card
            { css: css { marginBottom: "50px" }
            }
            [ el NextUI.cardBody {}
                $ el NextUI.container { display: "flex", justify: "space-evenly" }
                    [ el NextUI.spacer {} React.empty
                    , el NextUI.text
                        { h1: true
                        , css: { letterSpacing: "0.002em" }
                        , size: "$7xl"
                        , weight: "black"
                        }
                        "Hello NextUI"
                    , el NextUI.button { shadow: false, css: css { minHeight: "5rem", padding: "3rem", background: if isDark then "fuchsia" else "purple" } }
                        $ el NextUI.text { size: "$3xl", color: "white", css: css { fontWeight: "$bold" } } "Get started"
                    ]
            ]
```
