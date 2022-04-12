#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload



#up::MouseMove, 0, -20, 0, R  ; Win+UpArrow 热键 => 上移光标
*#Down::MouseMove, 0, 20, 0, R  ; Win+DownArrow => 下移光标
*#Left::MouseMove, -20, 0, 0, R  ; Win+LeftArrow => 左移光标
*#Right::MouseMove, 20, 0, 0, R  ; Win+RightArrow => 右移光标