; 短按切换中英文. 长按切换大小写.

CapsLock::
if GetKeyState("CapsLock", "T")
{
    KeyWait,CapsLock,T0.5
    if not(ErrorLevel)
    {
    SetCapsLockState, Off
    }
}
; 大写锁定开启时，按下 CapsLock 键即可关闭大写锁定。
else
{
    KeyWait,CapsLock,T0.5
    if not(ErrorLevel)
    {
        Send, ^{Space}
        ; 短按 CapsLock 键，发送 Ctrl+Space 以切换中英文。
    }
    else
    {
        KeyWait,CapsLock
        SetCapsLockState, On
        ; 长按 CapsLock 键 0.5 秒，仍可开启大写锁定。
    }

}
Return

global S_IsSpaceOn := 1

; 按住{space}加下列热键
#If S_IsSpaceOn
space::Space
space & i::Send,{Blind}{up}
space & j::left
space & k::down
space & l::right
space & <::Home
space & >::End

; 初始化函数
Init(){
    Menu, Tray, Icon, 1.ico, , 1
    Menu, Tray, Tip, Link
    Menu, Tray, NoStandard
    ; 菜单检查
    if S_IsSpaceOn{
        Menu, Config, Check, Space
    }