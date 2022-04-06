#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;获取鼠标的坐标
MouseGetPos, [ OutputVarX, OutputVarY, OutputVarWin, OutputVarControl, 1|2|3]