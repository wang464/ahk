import pyautogui
import subprocess
import time
# prs=subprocess.Popen(["C:\\Users\\Administrator\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe"])
prs=subprocess.Popen(["C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe"])
time.sleep(1)
pree=pyautogui.hotkey('ctrl', 'l')
time.sleep(2)

# 打开txt文件里面的链接
with open('03-31.txt','r',encoding='u8') as f:
    ttry = f.read()

pyautogui.typewrite(ttry, interval=0.25)
time.sleep(0.45)
pyautogui.press('Space')
time.sleep(1)
pyautogui.press('enter')