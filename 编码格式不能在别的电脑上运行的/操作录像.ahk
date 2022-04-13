#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
; 来源https://www.autoahk.com/archives/38566 

F6::pause
F5::Reload

;---------------------------------
;  鼠标键盘录像机（傻瓜版） v1.0  By FeiYue
;
;  使用说明：
;  1、F1录像，F2停止录像或回放，F3回放，F4查看和修改记录
;  2、查看的记录可以复制到用户脚本中使用（就是太长了^_^）
;---------------------------------
;-- 录像热键
F1:: 录像机.录像()
;-- 停止录像或回放
F2:: 录像机.停止()
;-- 回放热键
F3:: 录像机.回放()
;-- 查看和修改记录
F4:: 录像机.查看()
;======== 下面是函数 ========
Class 录像机 { ;==> 类开始
  static oldx, oldy, oldt, ok, text
  录像() {
    if (this.ok=1)
      this.ok:=0, this.ReStart(A_ThisFunc)
    SetFormat, IntegerFast, d
    CoordMode, ToolTip
    ToolTip, 正在录像——, A_ScreenWidth//2-100, 0
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
    this.text .= "录像机.回放(s)`r`n"
    ToolTip
    return this.text
  }
  回放(s="") {
    if (s="")
      s:=this.text
    else
      this.text:=s
    if (this.ok=1)
      this.ok:=0, this.ReStart(A_ThisFunc)
    SetMouseDelay, -1
    CoordMode, Mouse
    CoordMode, ToolTip
    ToolTip, 正在回放——, A_ScreenWidth//2-100, 0
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
  查看() {
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
  停止() {
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