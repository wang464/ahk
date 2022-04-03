;说明
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;LAlt

;;按住alt第二行是数字1-9-0
;; 数字0-9
LAlt & a::
  Send {1}
  KeyWait a
  return

LAlt & s::
  Send {2}
  KeyWait s
  return

LAlt & d::
  Send {3}
  KeyWait d
  return

LAlt & f::
  Send {4}
  KeyWait f
  return

LAlt & g::
  Send {5}
  KeyWait g
  return

LAlt & h::
  Send {6}
  KeyWait h
  return

LAlt & j::
  Send {7}
  KeyWait j
  return

LAlt & k::
  Send {8}
  KeyWait k
  return

LAlt & l::
  Send {9}
  KeyWait l
  return
; `是转义字符`后面的还是原来的意思
LAlt & `;::
  Send {0}
  KeyWait `;
  return

; 第一行是符号
LAlt & q::
  Send {!}
  KeyWait q
  return

LAlt & w::
  Send {@}
  KeyWait w
  return

LAlt & e::
  Send {#}
  KeyWait e
  return

LAlt & r::
  Send {$}
  KeyWait r
  return

LAlt & t::
  Send {`%}
  KeyWait t
  return

LAlt & y::
  Send {^}
  KeyWait y
  return

LAlt & u::
  Send {&}
  KeyWait u
  return

LAlt & i::
  Send {*}
  KeyWait i
  return

LAlt & o::
  Send {(}
  KeyWait o
  return

LAlt & p::
  Send {-}
  KeyWait p
  return

LAlt & m::
  Send {+}
  KeyWait m
  return

CapsLock & o::
current_clipboard = %Clipboard%
Send ^c
ClipWait, 1
Run http://www.bing.com/search?q=%Clipboard%
Clipboard = %current_clipboard%
return






:*:?zz::  ; 按下快捷键组合： `]` 和 `b`
FastInput("【文章推荐阅读】") ; 它会自动帮你输入 `【文章推荐阅读】`，你可以随便修改双引号中的内容
return

; 定义了一个 `FastInput` 方法，用来将你定义好的中文短语粘贴出来，简单解释下：
FastInput(FastWord)
{
	temp=%ClipBoard%        ; 将你粘贴板上的内容取出，保存到一个临时变量
	sleep,50                ; 等待 50ms 再执行下面的语句
	ClipBoard=%FastWord%    ; 把你自定义的（中文）短语复制到剪贴板上
	send,^v                 ; 把你剪贴板上的内容粘贴出来
	ClipBoard=%temp%        ; 恢复你剪贴板上原来的内容
}
