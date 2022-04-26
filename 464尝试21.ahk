#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
; 正式内容
; 大写单独按就是esc
; 大写搭配其他案件就是其他功能
CapsLock::
CapsLock2:=CapsLock:=1
KeyWait, CapsLock
if CapsLock2
  SendInput, {Esc}
CapsLock2:=CapsLock:=""
Return
; 大写搭配其他按键
#If CapsLock

o::
SendInput,{End}
SendInput,{Enter}
CapsLock2:=""
Return

; 光标操作
; 光标移动到行末
a::
SendInput,{Home}
CapsLock2:=""
Return
; 光标移动到行首
e::
SendInput,{Home}
CapsLock2:=""
Return
; 光标左移
b::
SendInput,{Left}
CapsLock2:=""
Return
;;光标右移
f::
SendInput,{Left}
CapsLock2:=""
Return
;;光标下移
n::
SendInput,{Down}
CapsLock2:=""
Return
;;光标上移
p::
SendInput,{Up}
CapsLock2:=""
Return
;光标向后选择
k::
SendInput,+{End}
CapsLock2:=""
Return
;光标向前选择
u::
SendInput,+{Home}
CapsLock2:=""
Return
; 删除操作
;;向右删除单词
d::
SendInput,{Del}
CapsLock2:=""
Return
;;向左删除单词
SendInput,{Backspace}
CapsLock2:=""
Return
; 其他操作
;;应用窗口切换
l::
SendInput,!{tab}
CapsLock2:=""
Return
;;回车键
j::
SendInput,{End}
SendInput,{Enter}
CapsLock2:=""
Return
; 关闭当前窗口
w::
SendInput,^{w}
CapsLock2:=""
Return


; 复制鼠标当前坐标
c::
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
; 复制的内容到哔哩哔哩进行搜索
o::
  current_clipboard = %Clipboard%
  Send ^c
  ClipWait, 1
  Run https://search.bilibili.com/all?keyword=%Clipboard%
  Clipboard = %current_clipboard%
return

#If

;;;;;;;;;;;;;;;;;;;;;;;;; 复制功能   ;;;;;;;;;;;;;;;;;;;;;;;;
; 定义了一个 `FastInput` 方法，用来将你定义好的短语粘贴出来,因为中英文会切换粘贴结果出错.
FastInput(FastWord)
{
  temp=%ClipBoard% ; 将你粘贴板上的内容取出，保存到一个临时变量
  sleep,50 ; 等待 50ms 再执行下面的语句
  ClipBoard=%FastWord% ; 把你自定义的（中文）短语复制到剪贴板上
  send,^v ; 把你剪贴板上的内容粘贴出来
  ClipBoard=%temp% ; 恢复你剪贴板上原来的内容
}
; 输入= gc输出括号里面的内容.
:*:=gc:: 
  FastInput("git clone ") 
return

; 输入= ga显示进行提交
:*:=ga::
  FastInput("git add .") 
return

; 输入= gm显示进行提交
:*:=gm::
  FastInput("git commit -m '") 
return






;;;;;;;;;;;;;;;;;;;;;;;;; 全局生效   ;;;;;;;;;;;;;;;;;;;;;;;;
; 鼠标控制音量
#If MouseIsOver("ahk_class Shell_TrayWnd")

WheelUp::Send {Volume_Up}

WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {

  MouseGetPos,,, Win

return WinExist(WinTitle . " ahk_id " . Win)

}

;;;;;;;;;;;;;;;;;;;;; 只在特定的程序生效的按键;;;;;;;;;;;;;;;
; 左右窗口移动功能只在浏览器窗口生效
#IfWinActive ahk_exe msedge.exe
CapsLock & f::
    Send, ^{tab}
    ; Ctrl的缩写就是^所以这句话的意思是Ctrl+Tab
    KeyWait f
return
CapsLock & b::
  Send, ^+{tab}
    ; Ctrl的缩写就是^所以这句话的意思是Ctrl+shift+Tab
  KeyWait f
return
#IfWinActive
; 光标翻页功能只在浏览器窗口生效
#IfWinActive ahk_exe msedge.exe
CapsLock & p::
    Send, {WheelUp 1}
return
CapsLock & n::
  Send, {WheelDown 1}
return
#IfWinActive
; 倍速播放只在抖音窗口生效
#IfWinActive ahk_exe douyin.exe
; 1.25倍速
d::
    Click 1646,1022
    Sleep, 500
    Click 1637,903
return
; 1倍速
a::
    Click 1646,1022
    Sleep, 500
    Click 1635,869
return
s::Down
w::Up
#IfWinActive
; 在obsidian里面输入. cap+O 功能等同于Ctrl+O
#IfWinActive ahk_exe Obsidian.exe
CapsLock & o::^o
CapsLock & ,::^+,
#IfWinActive

