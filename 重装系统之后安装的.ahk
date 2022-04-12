
;鍋氫负璇曢獙鏂囨。#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

F7::
Gui, Destroy
    ; 窗口置顶
	Gui +AlwaysOnTop
	Gui Add, Button, gChoiceA w100, 电脑重命名
	Gui Add, Button, gChoiceB w100, 调整鼠标大小
	Gui Add, Button, gChoiceC w100, 开机启动项
	; Gui Add, Button, gChoiceD w100, 下载印象笔记
	; Gui Add, Button, gChoiceE w100, 微信
	; Gui Add, Button, gChoiceF w100, QQ
    ; 文本控件
    Gui, Add, Link,, <a href="https://pinyin.sogou.com/">搜狗输入法</a>
    Gui, Add, Link,, <a href="https://wx.qq.com/">下载微信</a>
    Gui, Add, Link,, <a href="https://www.yinxiang.com/">印象笔记</a>
    Gui, Add, Link,, <a href="https://im.qq.com/download/index.shtml">下载QQ</a>
    
    ; ; 下拉列表
    ; Gui, Add, DropDownList, vColorChoice, Black|White|Red|Green|Blue
    ; 居中显示
    Gui, Show, xCenter yCenter



    ; 自适应居中
	; Gui, Show, AutoSize Center
Return

; 下载搜狗输入法
ChoiceA:
    Send #r
    sleep 100
    Send sysdm.cpl
    Send {Space}    
    sleep 100
    Send {Enter}  

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

ChoiceE:
    run https://wx.qq.com/
Return

ChoiceF:
    run https://im.qq.com/download/index.shtml
Return