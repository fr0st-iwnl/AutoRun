CredentialsEntered := 0  ; Variable to track if credentials have been entered

CheckCredentials:
InputBox, uName, User`?, Enter User: (F5: OFF  F6: REFRESH  F7: EXIT MACRO)
If (uName = "Frost")
{
    InputBox, uPass, Pass`?, Enter your PASSWORD! (F5: OFF  F6: REFRESH  F7: EXIT MACRO), HIDE
    If (uPass = "Frost")
    {
        CredentialsEntered := 1  ; Set credentials entered flag to true
        Goto, EnterScript
    }
    Else
    {
        MsgBox, 48, Wrong Pass, Please try again!
        Goto, CheckCredentials
    }
}
Else
{
    MsgBox, 48, Wrong User, Please try again!
    Goto, CheckCredentials
}

EnterScript:
Msgbox, 48, Macro by fr0st-iwnl, Welcome to the best macro <3.

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
if (CredentialsEntered)  ; Only allow $w hotkey if credentials have been entered
{
    Send w 
    Sleep 0
    Send {w down}
    KeyWait w 
    Send {w up}
}
Return

If WinActive("ahk_exe RobloxPlayerBeta.exe")
