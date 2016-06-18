import XMonad
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig (additionalKeys)
import Graphics.X11.ExtraTypes.XF86

main = xmonad $ defaultConfig
    { terminal = "xterm -sl 1000"
    , layoutHook = smartBorders $ layoutHook defaultConfig
    , focusedBorderColor = "#2b6651"
    , normalBorderColor = "#1d1f21"
    } `additionalKeys`
    [ ((mod1Mask, xK_p), spawn "GDK_DPI_SCALE=1.5 dmenu_run -fn inconsolata-18")
    , ((0, xF86XK_AudioMute), spawn "amixer -q set Master toggle")
    , ((0, xF86XK_AudioRaiseVolume), spawn "amixer -q set Master 5+")
    , ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 10")
    , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 10")
    ]
