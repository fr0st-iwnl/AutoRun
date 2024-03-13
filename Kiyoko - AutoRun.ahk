EnterScript:
Msgbox, 48, Macro by fr0st-iwnl, (F5: OFF  F6: REFRESH  F7: EXIT MACRO)

s:="W10 H10",p:="X0 Y36"
Gui, Color, Lime
Gui, -Caption +Toolwindow +AlwaysOnTop +LastFound
Gui, Show, %p% %s% NA
WinSet, Region, 0-0 %s%
return

F6::
Suspend, Off
Reload
return

F7::
Suspend, Off
ExitApp
return

F5::
Suspend, Toggle
if t:=!t
    Gui, Color, Red
Else
    Gui, Color, Yellow
return

$w::
{
    Send w 
    Sleep 80
    Send {w down}
    KeyWait w 
    Send {w up}
}
Return

If WinActive("ahk_exe RobloxPlayerBeta.exe")