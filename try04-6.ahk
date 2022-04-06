;图标
Menu, Tray, Icon, C:\jpg\mark.ico,,1

F6::pause
F5::Reload

; 网页翻译成中文
F8::
Click 1253,73,1
Click 165,225,1
return


; ; 网页不进行翻译
; F9::
; Click 1247,77,1
; Click 275,236,1
; return
; 修改记事本的设置
F9::
InputBox, OutputVar, Question 1, What is your first name?
if (OutputVar="Bi")
   MsgBox, That's an awesome name`, %OutputVar%.

;图标




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


;   录像() {
;     if (this.ok=1)
;       this.ok:=0, this.ReStart(A_ThisFunc)
;     SetFormat, IntegerFast, d
;     CoordMode, ToolTip
;     ToolTip, 正在录像——, A_ScreenWidth//2-100, 0
;     this.ok:=1, this.text:="s=`r`n"
;     this.oldx:="", this.oldy:="", this.oldt:=A_TickCount
;     this.SetHotkey(1)
;     r:=this.LogPos.Bind(this)
;     SetTimer, %r%, 10
;     ListLines, Off
;     While (this.ok=1)
;       Sleep, 100
;     ListLines, On
;     SetTimer, %r%, Off
;     this.SetHotkey(0)
;     this.text .= "录像机.回放(s)`r`n"
;     ToolTip
;     return this.text
;   }
