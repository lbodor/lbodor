import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig (additionalKeys)
import XMonad.Util.Run (spawnPipe)
import Graphics.X11.ExtraTypes.XF86
import System.IO (hPutStrLn)

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig
        { terminal = "xterm -sl 1000"
        , manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
        , startupHook = setWMName "LG3D" -- java swing
        , logHook = dynamicLogWithPP xmobarPP
			{ ppOutput = hPutStrLn xmproc
			, ppTitle = xmobarColor "grey" "" . shorten 53
			}
        , focusedBorderColor = "#2b6651"
        , normalBorderColor = "#1d1f21"
        } `additionalKeys`
        [
        ((mod1Mask, xK_p), spawn "GDK_DPI_SCALE=1.5 dmenu_run -fn inconsolata-18")
        , ((mod1Mask, xK_apostrophe), sendMessage ToggleStruts)
        , ((0, xF86XK_AudioMute), spawn "amixer -q set Master toggle")
        , ((0, xF86XK_AudioRaiseVolume), spawn "amixer -q set Master 5+")
        , ((0, xF86XK_AudioLowerVolume), spawn "amixer -q set Master 5-")
        , ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 10")
        , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 10")
        ]

