
;鍋氫负璇曢獙鏂囨。#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

F7::
Gui, Destroy
	Gui +AlwaysOnTop
	Gui Add, Button, gChoiceA w100, 下搜狗输入法
	Gui Add, Button, gChoiceB w100, 调整鼠标大小
	Gui Add, Button, gChoiceC w100, 开机启动项
	Gui Add, Button, gChoiceD w100, 下载印象笔记
	; Gui Add, Button, gChoiceE w100, FullB
	; Gui Add, Button, gChoiceF w100, FullC
	Gui, Show, AutoSize Center
Return

; 下载搜狗输入法
ChoiceA:
    run https://pinyin.sogou.com/
Return

;  main.cpl 
; 调整鼠标大小
ChoiceB:
    Send #r
    sleep 100
    Send main.cpl
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; 设置开机启动项#是win的缩写形式
; 意思是打开命令行然后执行
ChoiceC:
    Send #r
    sleep 100
    Send shell:startup
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; 下载印象笔记
ChoiceD:
    run https://www.yinxiang.com/
Return