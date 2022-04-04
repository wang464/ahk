 ;;回车键
CapsLock & M::
; 如果没有检查到微信窗口的存在.
IfWinNotExist ahk_class PotPlayer64
{
run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
; 则执行打开微信exe 的操作
}Else IfWinNotActive ahk_class PotPlayer64
;如果微信窗口存在,就把微信转为当前窗口.
 {
   WinActivate
 }else{
   WinMinimize
   ;如果微信不是当前窗口. 则把微信最小化.
}
return

;; 可以在命令行使用的复制粘贴
; 复制
Alt & c::
  Send {CtrlDown}{Insert}{CtrlUp}
  KeyWait c
  return
;粘贴
Alt & v::
  Send {shiftDown}{Insert}{shiftUp}
  KeyWait v
  return


