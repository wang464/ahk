
;鍋氫负璇曢獙鏂囨。#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

F7::
Gui, Destroy
    ; 锟斤拷锟斤拷锟矫讹拷
	Gui +AlwaysOnTop
	Gui Add, Button, gChoiceA w100, 修改电脑名称
	Gui Add, Button, gChoiceB w100, 设置鼠标大小
	Gui Add, Button, gChoiceC w100, 开机启动项
	; Gui Add, Button, gChoiceD w100, 锟斤拷锟斤拷印锟斤拷始锟�
	; Gui Add, Button, gChoiceE w100, 微锟斤拷
	; Gui Add, Button, gChoiceF w100, QQ
    ; 锟侥憋拷锟截硷拷
    Gui, Add, Link,, <a href="https://pinyin.sogou.com/">搜狗拼音</a>
    Gui, Add, Link,, <a href="https://wx.qq.com/">微信</a>
    Gui, Add, Link,, <a href="https://www.yinxiang.com/">印象笔记</a>
    Gui, Add, Link,, <a href="https://im.qq.com/download/index.shtml">QQ</a>
    Gui, Add, Link,, <a href="https://www.microsoft.com/en-us/download/details.aspx?id=35460">鼠标共用</a>
    
    ; ; 锟斤拷锟斤拷锟叫憋拷
    ; Gui, Add, DropDownList, vColorChoice, Black|White|Red|Green|Blue
    ; 锟斤拷锟斤拷锟斤拷示
    Gui, Show, xCenter yCenter



    ; 锟斤拷锟斤拷应锟斤拷锟斤拷
	; Gui, Show, AutoSize Center
Return

; 锟斤拷锟斤拷锟窖癸拷锟斤拷锟诫法
ChoiceA:
    Send #r
    sleep 100
    Send sysdm.cpl
    Send {Space}    
    sleep 100
    Send {Enter}  

Return

;  main.cpl 
; 锟斤拷锟斤拷锟斤拷锟斤拷小
ChoiceB:
    Send #r
    sleep 100
    Send main.cpl
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; 锟斤拷锟矫匡拷锟斤拷锟斤拷锟斤拷锟斤拷#锟斤拷win锟斤拷锟斤拷写锟斤拷式
; 锟斤拷思锟角达拷锟斤拷锟斤拷锟斤拷然锟斤拷执锟斤拷
ChoiceC:
    Send #r
    sleep 100
    Send shell:startup
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; 锟斤拷锟斤拷印锟斤拷始锟�
ChoiceD:
    run https://www.yinxiang.com/
Return

ChoiceE:
    run https://wx.qq.com/
Return

ChoiceF:
    run https://im.qq.com/download/index.shtml
Return