; 获取坐标的文本
F6::pause
F5::Reload
F8::
Click 1624,21,Right
Send, {n}
return



;~ 获取当前光标位置下绝对坐标和相对坐标

;~ 并将相对坐标复制到剪贴板，可直接粘贴到代码中

;~ 快捷键 Ctrl Shift e

F7::

 { 
CoordMode, ToolTip, Screen
; 表示获取绝对坐标
 MouseGetPos, xs, ys , id2, control
; 鼠标点击的位置的坐标
;  MsgBox, %xs%`,%ys%
;  弹窗坐标的窗口
 ;复制click坐标到剪贴板
 Clipboard = Click %xs%`,%ys%
 }
return


;做为试验文档