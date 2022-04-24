#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

; F7::
; Click 873,892
; sleep,800
; Click 878,614
; Return

; ; 鼠标左键加上esc关闭当前窗口
; ~LButton & Escape::
; WinGetActiveTitle, Title
; WinClose, %Title%
; return

#IfWinActive ahk_class Chrome_WidgetWin_1
F7::
    Send, {WheelDown 1}
return
#IfWinActive ahk_class Chrome_WidgetWin_1