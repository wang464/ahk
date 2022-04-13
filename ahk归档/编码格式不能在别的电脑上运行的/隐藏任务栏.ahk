; ; 任务失败
; ;;回车键
; CapsLock & v::
;   Send {LBotton}
;   KeyWait v
; return
; ; 获取坐标的文本

;~ 获取当前光标位置下绝对坐标和相对坐标
;~ 并将相对坐标复制到剪贴板，可直接粘贴到代码中
;~ 快捷键 Ctrl Shift e
^+e::	
  {
    MouseGetPos, xg, yg , id1, control
    CoordMode,Mouse,Screen
    MouseGetPos, xs, ys , id2, control

    WinGet, pname, ProcessName, ahk_id %id1%
    WinGetTitle, title, ahk_id %id1%
    WinGetClass, class, ahk_id %id1%
    tiptext=光标位置：`r`n相对: %xg%`,%yg%`r`n绝对: %xs%`,%ys%`r`n`r`nahk_id %id1%`r`nahk_exe %pname%`r`nahk_class %class%`r`nTitle: `r`n%title%`r`nControl: `r`n%control%`r`n
    ;~ MsgBox, %tiptext%
    ;~ ToolTip, %tiptext%
    ifWinExist,ahk_class AutoHotkeyGUI
      Gui, destroy
    Gui, font, s12, Verdana ; Set 10-point Verdana.
    Gui, Add, Edit, R15 W300 vMyEditx
    GuiControl,, MyEditx, %tiptext%
    Gui, Show,, 当前鼠标位置下窗口信息 ;, W200
    send {right}
    ;复制坐标到剪贴板
    Clipboard = Click %xg%`,%yg%
  }
return