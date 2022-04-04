; 随便写个用用
CapsLock & M::
Process, Exist, PotPlayer.exe
NewPID = %ErrorLevel%  
if (NewPID = 0){  
Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe  
}else{  
send {Media_Play_Pause}  
}

WinWait, MyWindow,, 1
if ErrorLevel   ; 即既不是空值, 也不是零.
    MsgBox, The window does not exist.
else
    MsgBox, The window exists.

