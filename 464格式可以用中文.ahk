; 新增功能
; ;;刷新和禁用操作
; CapsLock & w::pause ;禁用
; CapsLock & q::Reload ;刷新

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
  ; KeyWait n
return
;;光标上移
CapsLock & p::
  Send {Up}
  ; KeyWait p
return

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

; 输入= yx显示邮箱 
:*:=yx::
  FastInput("w_y_wei@qq.com") 
return

; 输入= gc输出括号里面的内容.
:*:=gc:: 
  Send, git clone 
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
CapsLock & o::
  current_clipboard = %Clipboard%
  Send ^c
  ClipWait, 1
  Run https://search.bilibili.com/all?keyword=%Clipboard%
  Clipboard = %current_clipboard%
return

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
;-- luxiang热键
CapsLock & q:: luxiangji.luxiang()
;-- tingzhiluxiang或huifang
CapsLock & w:: luxiangji.tingzhi()
;-- huifang热键
CapsLock & r:: luxiangji.huifang()
;-- chak和修改记录
; F10:: luxiangji.chak()
;======== 下面是函数 ========
Class luxiangji { ;==> 类开始
  static oldx, oldy, oldt, ok, text
  luxiang() {
    if (this.ok=1)
      this.ok:=0, this.ReStart(A_ThisFunc)
    SetFormat, IntegerFast, d
    CoordMode, ToolTip
    ToolTip, 正在luxiang——, A_ScreenWidth//2-100, 0
    this.ok:=1, this.text:="s=`r`n"
    this.oldx:="", this.oldy:="", this.oldt:=A_TickCount
    this.SetHotkey(1)
    r:=this.LogPos.Bind(this)
    SetTimer, %r%, 10
    ListLines, Off
    While (this.ok=1)
      Sleep, 100
    ListLines, On
    SetTimer, %r%, Off
    this.SetHotkey(0)
    this.text .= "luxiangji.huifang(s)`r`n"
    ToolTip
    return this.text
  }
  huifang(s="") {
    if (s="")
      s:=this.text
    else
      this.text:=s
    if (this.ok=1)
      this.ok:=0, this.ReStart(A_ThisFunc)
    SetMouseDelay, -1
    CoordMode, Mouse
    CoordMode, ToolTip
    ToolTip, 正在huifang——, A_ScreenWidth//2-100, 0
    this.ok:=1
    Loop, Parse, s, |
    {
      if (this.ok!=1)
      {
        ToolTip
        Exit
      }
      else if RegExMatch(A_LoopField, "(\d+)>(\d+),(\d+)", r)
      {
        Sleep, r1
        MouseMove, r2, r3, 0
      }
      else if RegExMatch(A_LoopField, "(\w+)>(\S+),([du]+)", r)
      {
        Sleep, r1
        r3:=(r3="du" ? "" : r3="d" ? " Down":" Up")
        Send % "{Blind}{" r2 . r3 "}"
      }
    }
    ToolTip
    this.ok:=0
  }
  chak() {
    if (this.ok=1)
      this.ok:=0, this.ReStart(A_ThisFunc)
    Gui, New, +LastFound +AlwaysOnTop
    Gui, Margin, 15, 15
    Gui, Font, cBlue s16
    Gui, Add, Edit, w500 h400
    Gui, Add, Button, w500 gCancel, 可粘贴其他记录或复制出去用
    GuiControl,, Edit1, % this.text
    Gui, Show
    DetectHiddenWindows, Off
    WinWaitClose, % "ahk_id " WinExist()
    GuiControlGet, r,, Edit1
    this.text:=r
    Gui, Destroy
  }
  tingzhi() {
    this.ok:=0
  }
  LogPos() {
    ListLines, Off
    CoordMode, Mouse
    MouseGetPos, x, y
    if (this.oldx!=x || this.oldy!=y)
      this.oldx:=x, this.oldy:=y
    , t:=-Round(this.oldt)+(this.oldt:=A_TickCount)
    , this.text .= "s=%s%|" t ">" x "," y "`r`n"
  }
  SetHotkey(f:=1) {
    ;-- 可以过滤已使用的热键，以逗号分隔
    static allkeys, filter:="F1,F2,F3,F4"
    ListLines, Off
    if (allkeys="")
    {
      ; 过滤会与LShift、LControl、LAlt等冲突的
      s:="|Shift|Control|Alt||"
      ; 补上主键盘与小键盘虚拟按键码相同导致遗漏的
      s.="|Home|End|PgUp|PgDn|Left|Right|Up|Down|Ins|Del|NumpadEnter|"
      Loop, 254 {
        k:=GetKeyName("vk" . Format("{:X}",A_Index))
        if StrLen(k)=1
          StringLower, k, k
        s.=InStr(s, "|" k "|") ? "" : k "|"
      }
      s:=Trim(SubStr(s, InStr(s,"||")+1), "|")
      allkeys:=RegExReplace(s, "Control", "Ctrl")
    }
    f:=(f ? "On":"Off")
    r:=this.LogKey.Bind(this)
    Loop, Parse, allkeys, |
      if A_LoopField not in %filter%
      Hotkey, ~*%A_LoopField%, %r%, %f% UseErrorLevel
    ListLines, On
  }
  LogKey() {
    Critical
    k:=SubStr(A_ThisHotkey,3)
    if k Contains Button,Wheel
      this.LogPos()
    if k Contains Shift,Ctrl,Alt,Win,Button
    {
      t:=-Round(this.oldt)+(this.oldt:=A_TickCount)
      , this.text .= "s=%s%|" t ">" k ",d`r`n"
      Critical, Off
      KeyWait, %k%
      t:=-Round(this.oldt)+(this.oldt:=A_TickCount)
      , this.text .= "s=%s%|" t ">" k ",u`r`n"
    }
    else
    {
      ; 处理QQ中文输入法自动发送左右键来调整光标的情况
      if (k="NumpadLeft"||k="NumpadRight") and !GetkeyState(k,"P")
        Return
      k:=(k="``" ? Format("vk{:x}",GetKeyVK("``")) : k)
      t:=-Round(this.oldt)+(this.oldt:=A_TickCount)
      , this.text .= "s=%s%|" t ">" k ",du`r`n"
    }
  }
  ReStart(f="") {
    if (f="")
    {
      r:=Func(this.func).Bind(this)
      SetTimer, %r%, -1
    }
    else
    {
      this.func:=f, r:=Func(A_ThisFunc).Bind(this)
      SetTimer, %r%, -1, -1
    }
    Exit
  }
} ;<== 类结束
