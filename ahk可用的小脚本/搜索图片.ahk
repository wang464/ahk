;用来试验代码的
F6::pause
F5::Reload
;#NoTrayIcon ; 不显示托盘图标

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SysGet, VirtualHeight, 79
SysGet, VirtualWidth, 78
; 代码搜索的宽度和高度

F7::
__ImageFilePath:="C:\Users\Administrator\Desktop\ttt.png"
;图片位置

gui,add,picture,hwnd__mypic,%__ImageFilePath%
if FileExist(__ImageFilePath){
    controlgetpos,,,__img_w,__img_h,,ahk_id %__mypic%
    CoordMode Pixel
    ImageSearch, __FoundX, __FoundY, 0, 0, VirtualWidth, VirtualHeight,%__ImageFilePath%
    CoordMode Mouse
    PicX:=__FoundX + __img_w/2
    PicY:=__FoundY + __img_h/2
    if (ErrorLevel=0) {
        MouseGetPos, NowX, NowY
        CoordMode, Mouse , Screen
        __ClickX:=PicX
        __ClickY:=PicY
        __ClickTimes:=1
        Click %__ClickX%, %__ClickY%, %__ClickTimes%
        __ClickX:=NowX
        __ClickY:=NowY
        __ClickTimes:=0
        Click %__ClickX%, %__ClickY%, %__ClickTimes%
    } else {
        MsgBox,ping_mu_mei_tu_pian
    }
} else {
    MsgBox,mei__zhao_dao_tu_biao
}
Return
