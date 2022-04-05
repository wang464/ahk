# 用来实现启用和关闭的图标

; 全局变量;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
NumsLineLock := ""              ;数字锁
IconNum := A_ScriptDir . "\number.ico" ;状态图标的路径
IconMark := A_ScriptDir . "\mark.ico"
;工具栏图标，用于指示NumsLineLock的状态
Menu, Tray, Icon, %IconNum%, , 1aaa

# 用来看看另起一行.
 ;;回车键
 CapsLock & j::
  SendInput,{End}
  SendInput,{Enter}
  KeyWait j
  return