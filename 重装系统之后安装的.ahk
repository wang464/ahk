
;做为试验文档#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

F7::
Gui, Destroy
    ; �����ö�
	Gui +AlwaysOnTop
	Gui Add, Button, gChoiceA w100, ����������
	Gui Add, Button, gChoiceB w100, ��������С
	Gui Add, Button, gChoiceC w100, ����������
	; Gui Add, Button, gChoiceD w100, ����ӡ��ʼ�
	; Gui Add, Button, gChoiceE w100, ΢��
	; Gui Add, Button, gChoiceF w100, QQ
    ; �ı��ؼ�
    Gui, Add, Link,, <a href="https://pinyin.sogou.com/">�ѹ����뷨</a>
    Gui, Add, Link,, <a href="https://wx.qq.com/">����΢��</a>
    Gui, Add, Link,, <a href="https://www.yinxiang.com/">ӡ��ʼ�</a>
    Gui, Add, Link,, <a href="https://im.qq.com/download/index.shtml">����QQ</a>
    
    ; ; �����б�
    ; Gui, Add, DropDownList, vColorChoice, Black|White|Red|Green|Blue
    ; ������ʾ
    Gui, Show, xCenter yCenter



    ; ����Ӧ����
	; Gui, Show, AutoSize Center
Return

; �����ѹ����뷨
ChoiceA:
    Send #r
    sleep 100
    Send sysdm.cpl
    Send {Space}    
    sleep 100
    Send {Enter}  

Return

;  main.cpl 
; ��������С
ChoiceB:
    Send #r
    sleep 100
    Send main.cpl
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; ���ÿ���������#��win����д��ʽ
; ��˼�Ǵ�������Ȼ��ִ��
ChoiceC:
    Send #r
    sleep 100
    Send shell:startup
    Send {Space}    
    sleep 100
    Send {Enter}
Return

; ����ӡ��ʼ�
ChoiceD:
    run https://www.yinxiang.com/
Return

ChoiceE:
    run https://wx.qq.com/
Return

ChoiceF:
    run https://im.qq.com/download/index.shtml
Return