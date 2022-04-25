#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
; 更换图标
IconNum := A_ScriptDir . "\mark.ico" 
Menu, Tray, Icon, %IconNum%, , 1`
F6::pause
F5::Reload

; F7::
#IfWinActive ahk_exe Obsidian.exe

#IfWinActive
CapsLock & `::^+!`

; ; 只在搜狗中生效的测试
; #if WinExist("ahk_class SoPY_Comp")
; k::
; MsgBox,OK
; return
; #if

; 活动窗口的控件列表中提取每个控件的名称.
; F7::
; WinGet, ActiveControlList, ControlList, A
; Loop, Parse, ActiveControlList, `n
; {
;     MsgBox, 4,, Control #%A_Index% is "%A_LoopField%". Continue?
;     IfMsgBox, No
;         break
; }

; 最大化活动窗口
; WinGet, active_id, ID, A
; WinMaximize, ahk_id %active_id%

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
; ; 光标翻页功能只在浏览器窗口生效
; #IfWinActive ahk_exe douyin.exe
; ; 1.25倍速
; F7::
;     Click 1646,1022
;     Sleep, 500
;     Click 1637,903
; return
; F8::
;     Click 1646,1022
;     Sleep, 500
;     Click 1635,869
; return
; #IfWinActive

; #If ActiveControlIsOfClass("Edit")
; F7::Send ^+{Left}{Del}
; F8::Send ^+{Right}{Del}
; Click 1625,1021
; Click 1625,1021  1.5倍

; Click 1625,1021  1倍

