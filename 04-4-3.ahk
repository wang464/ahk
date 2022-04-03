; 禁用大写
SetCapsLockState, AlwaysOff ;

; git命令相关
:*:]gc::
Send, git clone
Return

; 输入]ga显示进行提交
:*:]ga::
Send, git add .{Enter}
Return
; 输入]gm进行提交消息
:*:]gm::
Send, git commit -m '
Return

; 光标操作

;;光标移动到行首
CapsLock & a::
if getkeystate("alt") = 0
    Send, {Home}
else
    Send, +{Home}
return
;;光标移动到行末
CapsLock & e::
  Send {End}
  KeyWait e
  return

;;光标左移
 CapsLock & b::
  Send {Left}
  KeyWait b
  return
;;光标右移
CapsLock & f::
  Send {Right}
  KeyWait f
  return

;;光标下移
CapsLock & n::
  Send {Down}
  KeyWait n
  return
  ;;光标上移
CapsLock & p::
  Send {Up}
  KeyWait p
  return


;光标向后选择
CapsLock & k::
  Send +{End}
  KeyWait k
  return
  ;;删除当前位置到行首
CapsLock & u::
  Send +{Home}
  KeyWait u
  return 

; 删除操作
;;向右删除单词
CapsLock & d::
  Send {Del}
  KeyWait d
  return
;;向左删除单词
CapsLock & h::
  Send {Backspace}
  KeyWait h
  return

; 其他操作
  ;;应用窗口切换
CapsLock & l::
  Send !{tab}
  KeyWait l
  return

  ;;回车键
 CapsLock & j::
  Send {Enter}
  KeyWait j
  return
