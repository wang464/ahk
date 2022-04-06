;图标
Menu, Tray, Icon, C:\jpg\mark.ico,,1

F6::pause
F5::Reload

; 网页翻译成中文
; F8::
; Click 1253,73,1
; Click 165,225,1
return
; 制作一个搜索候选功能

F9::
; SplashImage, ttt.png, b, x900,y400, , , srf_icon, 
; ;设置一个透明的窗口
; ; ttt.png就是输入法的图标.需要自己放到jpg文件夹里面
; ; 现在使用的参数都是gui命令. 原来的参数被放弃了
; WinSet, Region, 50-0 W200 H250 E, 
; WinSet, Transparent, 255, srf_icon,
; ; 允许窗口完全透明Transparent, 0这个就是窗口透明的参数
; ; 如果是0就是完全透明,255就是完全透明
; WinSet, ExStyle, +0*20, srf_icon,
; ; 允许鼠标穿透 允许鼠标无视这个窗口
; WinSet, AlwaysOnTop, on, srf_icon,
; ; 窗口置顶
; 建立了一个“透明+允许鼠标穿透+置顶在最前面”
; 的窗口(其中X220 Y400是屏幕坐标位置)










; ; 网页不进行翻译
; F9::
; Click 1247,77,1
; Click 275,236,1
; return


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
