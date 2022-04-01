#!/usr/bin/ env python -*- coding:UTF-8 -*-

# 代替人输入文字
import pyautogui
import time
# prs=subprocess.Popen(["C:\\Users\\Administrator\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe"])


# 打开txt文件里面的链接
time.sleep(2)
with open('03-31.txt','r',encoding='u8') as f:
    ttry = f.read()

pyautogui.typewrite(ttry, interval=0.15)
time.sleep(0.5)
pyautogui.press('Space')
time.sleep(1)
pyautogui.press('enter')
