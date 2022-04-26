; 新增功能
; 关闭当前窗口
CapsLock & w::
WinGetActiveTitle, Title
WinClose, %Title%
return
; 在edge浏览器里面只关闭当前页面
#IfWinActive ahk_exe msedge.exe
; 在edge浏览器里面只关闭当前页面
CapsLock & w::^w
#IfWinActive
; 在vscode里面只关闭当前页面
#IfWinActive ahk_exe Code.exe
CapsLock & w::^w
#IfWinActive

CapsLock & q::Reload ;刷新

; NumLock::SetNumLockState, AlwaysOff
; 禁用小键盘开关
CapsLock::SetCapsLockState, AlwaysOff 
; 禁用 Capslock 键
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
  KeyWait f
return
;;光标右移
CapsLock & f::
  Send {Right}
  KeyWait f
return
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

;;光标下移
CapsLock & n::
  Send {Down}
  ; KeyWait n
return
;;光标上移
CapsLock & p::
  Send {Up}
  ; KeyWait p
return

; 光标翻页功能只在浏览器窗口生效
#IfWinActive ahk_exe msedge.exe
CapsLock & p::
    Send, {WheelUp 1}
return
CapsLock & n::
  Send, {WheelDown 1}
return
#IfWinActive



; 光标点击
CapsLock & i::
  click
  ; KeyWait i
return

;光标向后选择
CapsLock & k::
  Send +{End}
  KeyWait k
return
;光标向前选择
CapsLock & u::
  Send +{Home}
  KeyWait u
return 

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
  SendInput,{End}
  SendInput,{Enter}
  KeyWait j
return

; 文字操作
; 输入= zz输出括号里面的内容.
:*:=zz:: 
  FastInput("暂时没想好要输出什么") 
return

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

; 选中文字按住. cap+O 进行哔哩哔哩搜索

  current_clipboard = %Clipboard%
  Send ^c
  ClipWait, 1
  Run https://search.bilibili.com/all?keyword=%Clipboard%
  Clipboard = %current_clipboard%
return
; 在obsidian里面输入. cap+O 功能等同于Ctrl+O
#IfWinActive ahk_exe Obsidian.exe
CapsLock & o::^o
CapsLock & ,::^+,
#IfWinActive
; 复制鼠标当前坐标
CapsLock & c::
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

; 鼠标控制音量
#If MouseIsOver("ahk_class Shell_TrayWnd")

WheelUp::Send {Volume_Up}

WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {

  MouseGetPos,,, Win

return WinExist(WinTitle . " ahk_id " . Win)

}

; 网页翻译功能
