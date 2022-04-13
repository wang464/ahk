;设置命令行重启的方法
F6::pause
F5::Reload
F7::
    Send #r
    sleep 100
    Send shutdown
    Send {Space} 
    sleep 100
    Send {Space} 
    sleep 100
    Send -r
    sleep 100
    Send {Enter}
    sleep 100
    Send {Space}
    sleep 100
    Send -t
    sleep 100
    Send {Enter}
    sleep 100
    Send {Space}
    sleep 100
    ; Send 120
    ; sleep 100
    ; Send {Enter}
    ; shutdown -s -t 120秒就是两分钟之后重启
Return

; 取消重启功能
F8::
    Send #r
    sleep 100
    Send shutdown
    Send {Space} 
    sleep 100
    Send {Space} 
    sleep 100
    Send -a
    sleep 100
    Send {Enter}
    sleep 100
    Send {Space}
    sleep 100
    Send {Enter}
    ; Send 120
    ; sleep 100
    ; Send {Enter}
    ; shutdown -s -t 120秒就是两分钟之后重启
Return