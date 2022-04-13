
;åšä¸ºè¯•éªŒæ–‡æ¡£#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

F7::
Gui, Destroy
    ; ï¿½ï¿½ï¿½ï¿½ï¿½Ã¶ï¿½
	Gui +AlwaysOnTop
	Gui Add, Button, gChoiceA w100, ĞŞ¸ÄµçÄÔÃû³Æ
	Gui Add, Button, gChoiceB w100, ÉèÖÃÊó±ê´óĞ¡
	Gui Add, Button, gChoiceC w100, ¿ª»úÆô¶¯Ïî
	; Gui Add, Button, gChoiceD w100, ï¿½ï¿½ï¿½ï¿½Ó¡ï¿½ï¿½Ê¼ï¿?
	; Gui Add, Button, gChoiceE w100, Î¢ï¿½ï¿½
	; Gui Add, Button, gChoiceF w100, QQ
    ; ï¿½Ä±ï¿½ï¿½Ø¼ï¿½
    Gui, Add, Link,, <a href="https://pinyin.sogou.com/">ËÑ¹·Æ´Òô</a>
    Gui, Add, Link,, <a href="https://wx.qq.com/">Î¢ĞÅ</a>
    Gui, Add, Link,, <a href="https://www.yinxiang.com/">Ó¡Ïó±Ê¼Ç</a>
    Gui, Add, Link,, <a href="https://im.qq.com/download/index.shtml">QQ</a>
    Gui, Add, Link,, <a href="https://www.microsoft.com/en-us/download/details.aspx?id=35460">Êó±ê¹²ÓÃ</a>
    
    ; ; ï¿½ï¿½ï¿½ï¿½ï¿½Ğ±ï¿½
    ; Gui, Add, DropDownList, vColorChoice, Black|White|Red|Green|Blue
    ; ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê¾
    Gui, Show, xCenter yCenter



    ; ï¿½ï¿½ï¿½ï¿½Ó¦ï¿½ï¿½ï¿½ï¿½
	; Gui, Show, AutoSize Center
Return

; ï¿½ï¿½ï¿½ï¿½ï¿½Ñ¹ï¿½ï¿½ï¿½ï¿½ë·¨
ChoiceA:
    Send #r
    sleep 100
    Send sysdm.cpl
    Send {Space}    
    sleep 100
    Send {Enter}  

Return

;  main.cpl 
; ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ğ¡
ChoiceB:
    Send #r
    sleep 100
    Send main.cpl
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; ï¿½ï¿½ï¿½Ã¿ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½#ï¿½ï¿½winï¿½ï¿½ï¿½ï¿½Ğ´ï¿½ï¿½Ê½
; ï¿½ï¿½Ë¼ï¿½Ç´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È»ï¿½ï¿½Ö´ï¿½ï¿½
ChoiceC:
    Send #r
    sleep 100
    Send shell:startup
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; ï¿½ï¿½ï¿½ï¿½Ó¡ï¿½ï¿½Ê¼ï¿?
ChoiceD:
    run https://www.yinxiang.com/
Return

ChoiceE:
    run https://wx.qq.com/
Return

ChoiceF:
    run https://im.qq.com/download/index.shtml
Return