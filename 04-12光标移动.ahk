#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
F6::pause
F5::Reload



#up::MouseMove, 0, -20, 0, R  ; Win+UpArrow �ȼ� => ���ƹ��
*#Down::MouseMove, 0, 20, 0, R  ; Win+DownArrow => ���ƹ��
*#Left::MouseMove, -20, 0, 0, R  ; Win+LeftArrow => ���ƹ��
*#Right::MouseMove, 20, 0, 0, R  ; Win+RightArrow => ���ƹ��