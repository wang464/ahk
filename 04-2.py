# 只监听键盘事件


import time

import pythoncom
import pyWinhook





lines=[]
times=0



def onKeyboardEvent(event):
    # 监听键盘事件
    # print "MessageName:", event.MessageName
    # print "Message:", event.Message
    # print "Time:", event.Time
    # print "Window:", event.Window
    # print "WindowName:", event.WindowName
    # print "Ascii:", event.Ascii, chr(event.Ascii)
    # print "Key:", event.Key
    # print "KeyID:", event.KeyID
    # print "ScanCode:", event.ScanCode
    # print "Extended:", event.Extended
    # print "Injected:", event.Injected
    # print "Alt", event.Alt
    # print "Transition", event.Transition
    # print "---"
    save("keyborad", "key_down",event.Key,"0,0")
    # 同鼠标事件监听函数的返回值
    return True

