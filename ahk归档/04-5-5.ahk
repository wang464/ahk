#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


; Send {text}可以发送字符串，用于录入信息
F1::SendInput, {Text} 中文

F6::pause
F5::Reload



