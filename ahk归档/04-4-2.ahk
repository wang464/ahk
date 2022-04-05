; 短按切换中英文. 长按切换大小写.

CapsLock::
if GetKeyState("Space", "T")
{
    KeyWait,Space,T0.5
    if not(ErrorLevel)
    {
    SetCapsLockState, Off
    }
}
; 大写锁定开启时，按下 CapsLock 键即可关闭大写锁定。
else
{
    KeyWait,Space,T0.5
    if not(ErrorLevel)
    {
        Send, ^{Space}
        ; 短按 Space 键，发送 Ctrl+Space 以切换中英文。
    }
    else
    {
        KeyWait,Space
        SetCapsLockState, On
        ; 长按 CapsLock 键 0.5 秒，仍可开启大写锁定。
    }

}
Return