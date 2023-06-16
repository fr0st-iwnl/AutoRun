InputBox, uName, User`?, Enter User: Frost
If uName = Frost
InputBox, uPass, Pass`?, Enter your PASSWORD!, HIDE
Else
{
Msgbox, 48, Wrong User,Please try again!
Goto, GuiClose
}
If uPass = Frost
Goto, EnterScript
Else
Msgbox, 48, Wrong Pass,Please try again!
GuiClose:
ExitApp
Return
EnterScript:
Msgbox, 48,Macro by fr0st-iwnl, Welcome to the best macro <3.

s:="W10 H10",p:="X0 Y36"
Gui,Color,Lime
Gui, -Caption +Toolwindow +AlwaysOnTop +LastFound
Gui,Show,%p% %s% NA
WinSet, Region, 0-0 %s%
return
F6::
Suspend, Off
reload
return
F7::
Suspend, Off
ExitApp
return
F5::
Suspend, Toggle
if t:=!t
Gui,Color,Red
Else
Gui,Color,Yellow
return
Suspend, permit
TildaToggle:=!TildaToggle
if TildaToggle
Suspend on
else
Suspend off
Gui,Color,Yellow
Return
$w::
    Send w 
    Sleep 0
    Send {w down}
    KeyWait w 
    Send {w up}
Return

If WinActive("ahk_exe RobloxPlayerBeta.exe")