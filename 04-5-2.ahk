 ;;回车键
 CapsLock & j::
  SendInput,{End}
  SendInput,{Enter}
  KeyWait j
  return