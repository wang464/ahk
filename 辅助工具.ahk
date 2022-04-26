#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
; 更换图标
IconNum := A_ScriptDir . "\mark.ico" 
Menu, Tray, Icon, %IconNum%, , 1`
F6::pause
F5::Reload




; CapsLock & o::
;   current_clipboard = %Clipboard%
;   Send ^c
;   ClipWait, 1
;   Run https://search.bilibili.com/all?keyword=%Clipboard%
;   Clipboard = %current_clipboard%
;   KeyWait CapsLock
;   KeyWait o
; return

; o::
; Run https://search.bilibili.com/all?keyword=%Clipboard%
; Return
; CapsLock::
; CapsLock2:=CapsLock:=1
; KeyWait, CapsLock
; if CapsLock2
;   SendInput, {Esc}
; CapsLock2:=CapsLock:=""
; Return

; #If CapsLock
; o::
; Run https://search.bilibili.com/all?keyword=%Clipboard%
; Return
; q::
; SendInput,^+!q
; CapsLock2:=""
; Return

; o::
; SendInput,{End}
; SendInput,{Enter}
; CapsLock2:=""
; Return

; a::
; SendInput,{Home}
; CapsLock2:=""
; Return
; #If
; 按住tab数字键盘功能切换
; TAB::
; if (NumsLineLock=1)
; {
;   NumsLineLock:=""
; }
; else
; {
;   NumsLineLock:=1
; }
; ; CapsLock2:=""
; return
; #If

; #if NumsLineLock
; 0::SendInput {)}
; 1::SendInput {!}
; 2::SendInput {@}
; 3::SendInput {+}
; 4::SendInput {$}
; 5::SendInput {`%}
; 6::SendInput {^}
; 7::SendInput {&}
; 8::SendInput {*}
; 9::SendInput {(}
; +0::SendInput {0}
; +1::SendInput {1}
; +2::SendInput {2}
; +3::SendInput {3}
; +4::SendInput {4}
; +5::SendInput {5}
; +6::SendInput {6}
; +7::SendInput {7}
; +8::SendInput {8}
; +9::SendInput {9}
; #If

; ; F7::
; #IfWinActive ahk_exe Obsidian.exe

; #IfWinActive
; CapsLock & `::^+!`

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

#IfWinActive ahk_exe Obsidian.exe
; CapsLock & o::^o
; CapsLock & ,::^+,
; ; CapsLock & q::^+!q
; #IfWinActive

; https://search.bilibili.com/all?keyword=Obsidian.exe
; https://search.bilibili.com/all?keyword=%E4%BD%A0%E5%A5%BD%E5%95%8A