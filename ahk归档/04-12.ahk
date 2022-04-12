#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload

F7::
Gui, Destroy
	Gui +AlwaysOnTop
	; Gui Add, Button, gChoiceA w100, 800x600
	; Gui Add, Button, gChoiceB w100, 1080x720
	Gui Add, Button, gChoiceC w100, 开机启动项
	; Gui Add, Button, gChoiceD w100, FullA
	; Gui Add, Button, gChoiceE w100, FullB
	; Gui Add, Button, gChoiceF w100, FullC
	Gui, Show, AutoSize Center
Return

ChoiceC:
    Send #r
Return
