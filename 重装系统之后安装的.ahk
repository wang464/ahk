
;做为试验文档#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

F7::
Gui, Destroy
	Gui +AlwaysOnTop
	Gui Add, Button, gChoiceA w100, ���ѹ����뷨
	Gui Add, Button, gChoiceB w100, ��������С
	Gui Add, Button, gChoiceC w100, ����������
	Gui Add, Button, gChoiceD w100, ����ӡ��ʼ�
	; Gui Add, Button, gChoiceE w100, FullB
	; Gui Add, Button, gChoiceF w100, FullC
	Gui, Show, AutoSize Center
Return

; �����ѹ����뷨
ChoiceA:
    run https://pinyin.sogou.com/
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