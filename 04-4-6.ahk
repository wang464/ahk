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

; 文字操作
; 输入? zz输出括号里面的内容.
:*:?zz:: 
FastInput("暂时没想好要输出什么") 
return

; 定义了一个 `FastInput` 方法，用来将你定义好的短语粘贴出来,因为中英文会切换粘贴结果出错.
FastInput(FastWord)
{
	temp=%ClipBoard%        ; 将你粘贴板上的内容取出，保存到一个临时变量
	sleep,50                ; 等待 50ms 再执行下面的语句
	ClipBoard=%FastWord%    ; 把你自定义的（中文）短语复制到剪贴板上
	send,^v                 ; 把你剪贴板上的内容粘贴出来
	ClipBoard=%temp%        ; 恢复你剪贴板上原来的内容
}


; 输入? yx显示邮箱 
:*:?yx::
FastInput("w_y_wei@qq.com") 
return

; 输入? gc输出括号里面的内容.
:*:?gc:: 
FastInput("git clone ") 
return

; 输入? ga显示进行提交
:*:?ga::
FastInput("git add .") 
return

; 输入? gm显示进行提交
:*:?gm::
FastInput("git commit -m '") 
return


; 选中文字按住. cap+O 进行必应搜索
CapsLock & o::
current_clipboard = %Clipboard%
Send ^c
ClipWait, 1
Run http://www.bing.com/search?q=%Clipboard%
Clipboard = %current_clipboard%
return