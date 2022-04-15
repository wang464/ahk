#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
; 先想想怎么写.的
F6::pause
; F6::Send,^{F4}
F5::Reload


; F7::Click 106,228.
; F7::Click 159,151
;  F7::
; Send, sj
; Sleep, 300
; send, {3}
; MsgBox, "完成"
; return

F7::
; Send, #{2}
Send, ^{a}
Sleep, 300
Send, ^{c}
Sleep, 300
run,"C:\Program Files (x86)\Yinxiang Biji\印象笔记\Evernote.exe"
Sleep, 800
Send, #{Up}
; 全屏
Sleep, 1800
Click 106,228.
Sleep, 800
; 点击了新建md
Click 159,151
Sleep, 800
Send, #{Up}
Sleep, 300
Send, {F2}
Sleep, 300
Send, sj
Sleep, 300
send, 3
Sleep, 800
Send, {Tab}
Sleep, 300
Send, ^{v}
Sleep, 300
Send, {F3}
Sleep, 300
Send, ahk
Sleep, 300
Send, {Enter}
Sleep, 300
Send, {Enter}
Sleep, 300
Send, !{F4}
; MsgBox, "完成"
return

